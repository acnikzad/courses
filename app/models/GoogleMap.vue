<template>
  <div class="container">
    <div>
      <GoogleMap api-key="AIzaSyC8FHHNjdqdpY9kzMeSzSKqRiiKEBa-Cyk" style="width: 100%; height: 750px" :center="center" :zoom="11.5" v-if="done">
        <MarkerCluster>
          <Marker v-for="(location, i) in locations" :options="{ position: location }" :key="i" @click="openMarker(location.id)">
            <InfoWindow 
              :closeclick="false"
              :opened="openMarkerID == location.id">
              <div>
                <h2>{{ location.label }}</h2>
                <!-- {{ review.comment }} -->
              </div>
              <div v-for="review in reviews">
                <h4>Comment: {{review.comment}}</h4>
                <h4>Cleanliness: {{review.cleanliness}}/5</h4>
                <h4>Reviewer: {{review.user.first_name}} {{review.user.last_name}}</h4>
              </div>
            </InfoWindow >
          </Marker>
        </MarkerCluster>
      </GoogleMap>
    </div>
    <div>
      Content
    </div>
  </div>
</template>

<script>
    // opened=true,
    //     :position="center"
    //     :options="{
    //       pixelOffset: {}
    //       width: 0,
    //       height: -35
    //     }"

import { defineComponent, ref, onMounted } from "vue";
import { GoogleMap, Marker, MarkerCluster, InfoWindow } from "vue3-google-map";
import axios from "axios";
import GmapCustomMarker from 'vue3-gmap-custom-marker';

export default defineComponent({
  components: { GoogleMap, Marker, MarkerCluster, InfoWindow },
  setup(props) {
    var done = ref(false)
    const openMarkerID = ref(null)
    const center = { lat: 38.5816, lng: -121.4944 };
    const locations = ref([])
    

  onMounted(()=> {

    axios.get(`/api/bathrooms`, {
    params: {},
    headers: {
      'Content-Type': 'application/json'
   }     
  }).then(response => {
    var result = response.data
    var num = 0
    result.forEach((data) => {
      var payload = {
        id: data.id,
        lat: parseFloat(data.lat),
        lng: parseFloat(data.lng),
        label: data.label
      }
      locations.value.push(payload)
      num += 1
      if (num === result.length) {
        done.value = !done.value
      }
    })
  });
  })


  function openMarker (id) {
    openMarkerID.value = id
    const loc = locations.value.filter((l) => l.id == id);
    axios.get(`/api/bathrooms/${id}`).then(response => {
      console.log('bathroom details ...', response.data);
      this.reviews = response.data.reviews;
      console.log(this.reviews)
        });


    // console.log(loc)
    console.log(id)

  }
    return { 
      openMarker,
      openMarkerID,
      done, 
      center, 
      locations,

      currentBathroom: {},
      reviews: [],
      };
  },
});


</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->


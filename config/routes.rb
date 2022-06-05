Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

   namespace :api do
    get "/teachers" => "teachers#index"
    get "/teachers/:id" => "teachers#show"
    post "/teachers" => "teachers#create"
    patch "/teachers/:id" => "teachers#update"
    delete "/teachers/:id" => "teachers#destroy"

    get "/students" => "students#index"
    get "/students/:id" => "students#show"
    post "/students" => "students#create"
    patch "/students/:id" => "students#update"
    delete "/students/:id" => "students#destroy"

    get "/courses" => "courses#index"
    get "/courses/:id" => "courses#show"
    post "/courses" => "courses#create"
    patch "/courses/:id" => "courses#update"
    delete "/courses/:id" => "courses#destroy"

    post "/sessions" => "sessions#create"


  end
end

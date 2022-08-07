Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  root to: redirect('\"/students')
    resources :students do
      collection do
        post :import
      end
    end

   namespace :api do
    get "/teachers" => "teachers#index"
    get "/teachers/:id" => "teachers#show"
    post "/teachers" => "teachers#create"
    patch "/teachers/:id" => "teachers#update"
    delete "/teachers/:id" => "teachers#destroy"
    post "/teachers/:id" => "teachers#assign_to_course"

    get "/students" => "students#index"
    get "/students/:id" => "students#show"
    post "/students" => "students#create"
    patch "/students/:id" => "students#update"
    delete "/students/:id" => "students#destroy"
    
    post "/students/:id" => "students#assign_to_course"
    post "/students/import" => "students#import"

    get "/courses" => "courses#index"
    get "/courses/:id" => "courses#show"
    post "/courses" => "courses#create"
    patch "/courses/:id" => "courses#update"
    delete "/courses/:id" => "courses#destroy"

    # get "/student_course" => "grades#index"
    # get "/student_course/:id" => "grades#show"
    # post "/student_course" => "grades#create"
    # patch "/student_course/:id" => "grades#update"

    post "/sessions" => "sessions#create"


  end
end

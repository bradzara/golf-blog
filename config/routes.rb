Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get "/blog_post" => "blog_post#index"
  get "/blog_post/:id" => "blog_post#show"
  post "/blog_post" => "blog_post#create"
  patch "/blog_post/:id" => "blog_post#update"
  delete "/blog_post/:id" => "blog_post#delete"
end

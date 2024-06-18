Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # blog_post routes
  get "/blog_posts" => "blog_posts#index"
  get "/blog_posts/:id" => "blog_posts#show"
  post "/blog_posts" => "blog_posts#create"
  patch "/blog_posts/:id" => "blog_posts#update"
  delete "/blog_posts/:id" => "blog_posts#delete"

  # comment routes
  get "/comments" => "comments#index"
  get "/comments/:id" => "comments#show"
  post "/comments" => "comments#create"
  patch "/comments/:id" => "comments#update"
  delete "/comments/:id" => "comments#delete"
end

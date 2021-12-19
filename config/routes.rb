Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #for users
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"


  #for reviews
  get "/reviews" => "reviews#index"
  post "/reviews" => "reviews#create"
  delete "/reviews/:id" => "reviews#destroy"

  #for comments
  post "/comments" => "comments#create"
  delete "/comments/:id" => "comments#destroy"

  #for media
  get "/media" => "media#index"
  get "/media/:id" => "media#show"
  get "/search" => "media#search"

  #for watchlist
  get "/watchlist" => "watchlists#index"
  post "/watchlist" => "watchlists#create"
  delete "/watchlist/:id" => "watchlists#destroy"
end

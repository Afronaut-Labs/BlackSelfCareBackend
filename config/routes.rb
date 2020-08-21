Rails.application.routes.draw do
  get "dashboard/show"
  root "home#show"
  get "home/show"
  resources :saved_games
  resources :saved_videos
  resources :saved_quotes
  resources :games
  resources :videos
  resources :users
  resources :quotes
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  get "auth/auth0/callback" => "auth0#callback"
  get "auth/failure" => "auth0#failure"
  # get "auth/auth0" =>
  # post "auth/auth0" => "dashboard#create"
  get "/dashboard" => "dashboard#show"

  get "/quotes" => "quotes#index"
  get "/quotes/:id" => "quotes#show"

  get "/games" => "games#index"
  get "/quotes/:id" => "games#show"

  get "/videos" => "videos#index"
  get "/videos/:id" => "videos#show"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
end

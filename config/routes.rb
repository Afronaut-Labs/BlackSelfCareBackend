Rails.application.routes.draw do
  resources :saved_games
  resources :saved_videos
  resources :saved_quotes
  resources :games
  resources :videos
  resources :users
  resources :quotes
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
end

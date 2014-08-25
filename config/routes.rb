Rails.application.routes.draw do

  resources :fish
  resources :users
  resources :sessions

  root "welcome#index"
  # get "users/new" => "users#new"
  # post "users" => "users#create"
  get "signout" => "sessions#destroy"
  # get "sessions/new" => "sessions#new"
  # post "sessions" => "sessions#create", as: :signin
  get "about" => "welcome#about"
  get "logout" => "sessions#destroy", as: :logout
  # get "user" => "users#show"
  # get "edit_user" => "users#edit"
  # patch "user/:id" => "users#update"

end

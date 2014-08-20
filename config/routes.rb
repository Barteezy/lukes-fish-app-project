Rails.application.routes.draw do

  resources :fish

  root "welcome#index"
  get "users/new" => "users#new"
  post "users" => "users#create"
  get "signout" => "sessions#destroy"
  get "sessions/new" => "sessions#new"
  post "sessions" => "sessions#create", as: :signin
  get "about" => "welcome#about"

end

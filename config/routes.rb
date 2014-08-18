Rails.application.routes.draw do

  root "welcome#index"
  get "users/new" => "users#new"
  post "users" => "users#create"
  get "signout" => "sessions#destroy"
  get "sessions/new" => "sessions#new"
  post "sessions" => "sessions#create", as: :signin

end

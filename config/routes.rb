Rails.application.routes.draw do

  root "welcome#index"
  get "users/new" => "users#new"
  post "users" => "users#create"
  get "signout" => "sessions#destroy"

end

Rails.application.routes.draw do
  
  resources :photos
  devise_for :users
  resources :comments, only: [:create]
 
  get "profile/:username" => "users#profile", as: :profile
  root to: "home#homepage"
end

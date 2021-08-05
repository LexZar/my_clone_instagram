Rails.application.routes.draw do
  
  resources :photos
  devise_for :users
  resources :comments, only: [:create]
  post "follow/user" => "users#follow_user" , as: :follow_user
  post "follow/user" => "users#unfollow_user",  as: :unfollow_user 
  get "profile/:username" => "users#profile", as: :profile
  root to: "home#homepage"
end

Rails.application.routes.draw do
  
  resources :photos
  devise_for :users

  get "profile/:username" => "users#profile", as: :profile
  root to: "home#homepage"
end

Rails.application.routes.draw do
  
  devise_for :users

  get "/user" => "users#index"
  root to: "home#homepage"
end

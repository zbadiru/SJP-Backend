Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :users, only: [:create]
  post "/sign-in", to: "users#sign_in"
  get "/validate", to: "users#validate"

  resources :portfolios
  resources :photoshoots
  resources :images
  resources :merchandises
end

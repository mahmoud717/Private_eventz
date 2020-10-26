Rails.application.routes.draw do
  resources :events
  resources :users, only: [ :new ,:show, :index, :create]
  get "signup", to: "users#new"
  get "logout", to: "sessions#destroy"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  root to: "users#index"
end

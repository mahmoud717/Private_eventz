Rails.application.routes.draw do
  
  resources :events 
  resources :users, only: [ :new ,:show, :index, :create]
  get "signup", to: "users#new"
  get "logout", to: "sessions#destroy"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  get "events/:id/attend", to: "event_attendees#attend"
  get "events/:id/cancel", to: "event_attendees#cancel"

  root to: "events#index"
end

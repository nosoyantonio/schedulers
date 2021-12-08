Rails.application.routes.draw do
  resources :tassks
  root "scheduler#index"

  get "/scheduler", to: "scheduler#index"
  get "/new", to: "new#new"
  resources :notes
  resources :tasks
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

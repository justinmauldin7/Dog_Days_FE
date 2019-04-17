Rails.application.routes.draw do
  root "welcome#index"

  resources :favorites, only: [:index, :create, :destroy]

  get '/login', to: "sessions#new"
end

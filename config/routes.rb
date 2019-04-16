Rails.application.routes.draw do
  root "welcome#index"

  resources :favorites, only: [:index]
end

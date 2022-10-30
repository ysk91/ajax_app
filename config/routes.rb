Rails.application.routes.draw do
  root 'recipes#index'
  resources :recipes, only: [:index, :create]
  resources :users, only: [:index, :create]
end

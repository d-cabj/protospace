Rails.application.routes.draw do
  devise_for :users

  root 'prototypes#index'
  resources :users, only: [:show, :edit, :update]
  resources :prototypes do
  # resources :comments
   # ,only: [:create]
end

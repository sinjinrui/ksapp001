Rails.application.routes.draw do
  devise_for :users
  root 'balls#index'
  resources :balls, only: [:index, :create, :edit, :destroy, :update]
end

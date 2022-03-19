Rails.application.routes.draw do
  root to: 'todos#index'
  devise_for :users
  resources :todos, only: [:index, :create, :update]
  resources :users, only: [:edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

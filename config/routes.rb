Rails.application.routes.draw do
  root 'home#index'
  resources :profiles
  resources :departments
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'
  get 'home/authentication'

  devise_for :users
end

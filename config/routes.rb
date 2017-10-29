Rails.application.routes.draw do
  resources :profiles
  resources :departments
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root  'home#index'
  get 'home/index'
  get 'home/authentication'

  devise_for :users
end

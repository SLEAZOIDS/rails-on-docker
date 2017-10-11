Rails.application.routes.draw do
  root 'home#authentication'

  get 'home/index'
  get 'home/authentication'

  devise_for :users
end

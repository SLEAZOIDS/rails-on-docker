Rails.application.routes.draw do
  root to: "home#authentication"

  get 'home/index'
  get 'home/authentication'

  devise_for :users
end

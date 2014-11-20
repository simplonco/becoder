Rails.application.routes.draw do
  root 'home#index'
  resources :applications
  resources :users
  resources :articles
end

Rails.application.routes.draw do
  root 'home#index'
  get '/New', to: 'candidates#form'
  resources :applications
end

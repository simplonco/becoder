Rails.application.routes.draw do
  root 'home#index'
  get '/New', to: 'candidates#new'
  post '/create', to: 'candidature#create'
  resources :applications
end

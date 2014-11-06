Rails.application.routes.draw do
  root 'candidates#form'

  resources :applications
end

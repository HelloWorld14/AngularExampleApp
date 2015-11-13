Rails.application.routes.draw do
  resources :questions, only: [:index, :show, :create]
  
  root 'home#index'
end

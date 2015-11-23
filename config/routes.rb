Rails.application.routes.draw do
  resources :questions, except: [:new, :edit, :update]
  
  root 'home#index'
end

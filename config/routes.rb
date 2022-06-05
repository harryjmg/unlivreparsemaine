Rails.application.routes.draw do
  resources :prospects, only: [:new, :show, :create]
  
  root "prospects#new"
end

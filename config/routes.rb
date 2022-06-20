Rails.application.routes.draw do
  resources :episodes
  resources :prospects, only: [:new, :show, :create]
  
  root "prospects#new"
end

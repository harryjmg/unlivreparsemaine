Rails.application.routes.draw do
  resources :prospects, only: [:new, :show, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "prospects#new"
end

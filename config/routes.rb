Rails.application.routes.draw do
  get 'pages/landing'
  get 'pages/squeeze'
  get 'pages/payment'
  get 'pages/confirmation'
  get 'pages/legals'
  resources :contents
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#landing"
end

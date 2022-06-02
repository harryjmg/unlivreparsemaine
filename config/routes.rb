Rails.application.routes.draw do
  get 'pages/landing', as: "landing"
  get 'presentation', to: "pages#presentation", as: "presentation"
  get 'pages/squeeze', as: "squeeze"
  get 'pages/payment', as: "payment"
  get 'pages/confirmation', as: "confirmation"
  get 'pages/legals', as: "legals"
  resources :contents
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#landing"
end

Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  get 'contact', to: 'pages#contact'
  get 'careers', to: 'pages#careers'

  resources :teachers, only: [:index, :show, :new, :create]

end

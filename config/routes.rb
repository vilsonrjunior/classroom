Rails.application.routes.draw do

  resources :students
  resources :teachers
  devise_for :users
  root to: 'pages#home'

  get 'contact', to: 'pages#contact'
  get 'careers', to: 'pages#careers'


end

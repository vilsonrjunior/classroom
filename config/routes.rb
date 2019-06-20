Rails.application.routes.draw do

  resources :students
  resources :courses, only: [:index, :new, :create, :show]
  devise_for :teachers
  resources :teachers
  root to: 'pages#home'

  get 'contact', to: 'pages#contact'
  get 'careers', to: 'pages#careers'


end

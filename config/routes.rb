Rails.application.routes.draw do

  devise_for :parents
  devise_for :teachers
  resources :teachers, expect: :show
  resources :parents

  resources :students
  resources :courses

  root to: 'pages#home'

  get 'contact', to: 'pages#contact'
  get 'careers', to: 'pages#careers'


end

Rails.application.routes.draw do

  get 'hello_world', to: 'hello_world#index'
  # devise_for :parents
  # devise_for :teachers
  # resources :teachers, expect: :show
  # resources :parents

  # resources :students
  # resources :courses

  # root to: 'pages#home'

  # get 'contact', to: 'pages#contact'
  # get 'careers', to: 'pages#careers'


  scope 'auth' do
    devise_for :parents
    devise_for :teachers
    devise_for :students
  end

  resources :users
  resources :parents
  resources :teachers
  # resources :exam_categories
  resources :lessons

  resources :students
  # resources :exams
  resources :courses
  resources :lessons

  # root 'dashboard#index'
  root 'pages#home'
end

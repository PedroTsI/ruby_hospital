Rails.application.routes.draw do
  resources :articles
  get 'home/index'
  resources :pacients
  resources :medics
  devise_for :users

  root 'home#index'

  get 'medicos' => 'medics#index'
  get 'pacientes' => 'pacients#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

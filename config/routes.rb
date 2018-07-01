Rails.application.routes.draw do
  get 'about/index'
  resources :listings
  resources :snacks
  resources :about
  # To create a first name in devise, we need to create a block and a registration_controller.rb
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'snacks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

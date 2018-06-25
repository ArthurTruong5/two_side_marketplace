Rails.application.routes.draw do
  # To create a first name in devise, we need to create a block and a registration_controller.rb
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'store#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
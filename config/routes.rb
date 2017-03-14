Rails.application.routes.draw do

  devise_for :users, ActiveAdmin::Devise.config
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :companies do
  	resources :complaints, only: [:create, :destroy]
  end
  devise_for :users, controllers: { registrations: 'users/registrations' }
  
  root 'companies#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

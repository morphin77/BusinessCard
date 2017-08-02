Rails.application.routes.draw do
  resources :messages
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get '/about', to: 'static_pages#about', as: 'patient'
  get '/portfolio', to: 'static_pages#portfolio', as: 'portfolio'
  get '/contacts', to: 'static_pages#contacts', as: 'contacts'
  get '/publications', to: 'static_pages#publications', as: 'publications'

  root 'static_pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  scope "/:locale", locale: /#{I18n.available_locales.join("|")}/ do
    get '/home', to: 'static_pages#Home', as: 'home'

    get '/about', to: 'static_pages#About', as: 'about'

    get '/CV', to: 'static_pages#CV', as: 'CV'
  end

  root 'static_pages#Home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

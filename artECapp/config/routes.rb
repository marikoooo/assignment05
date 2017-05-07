Rails.application.routes.draw do	
  devise_for :admins, controllers: {
  	registrations: 'admins/registrations',
  	passwords: 'admins/passwords',
  	sessions: 'admins/sessions'
  }
   mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'home#top'
  resources :products

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :admins, controllers: { 
  	sessions: 'admins/sessions',
  	registrations: 'admins/registrations', 
  }

  root 'home#index'
  get "/index" => 'home#index'
  get "/flight-homepage" => 'home#flight-homepage'
  get "/hotel-homepage"  => 'home#hotel-homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  apipie

  resources :shops
  resources :barbers
  resources :bookings

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      devise_for :users, controllers: { sessions: 'api/v1/sessions', registrations: 'api/v1/registrations' }
      resources :barbers, only: %i(index show)
      resources :bookings, only: %i(index show update create)
    end
  end

  root 'shops#index'
end

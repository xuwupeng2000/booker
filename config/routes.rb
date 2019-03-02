Rails.application.routes.draw do
  apipie

  devise_for :users, controllers: { sessions: 'api/v1/sessions', registrations: 'api/v1/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope :api do
    namespace :v1 do
      resources :barbers, only: %i(index show)
      resources :bookings, only: %i(index show update create)
    end
  end

end

Rails.application.routes.draw do
  devise_for :contestants
  devise_for :supervisors, controllers: {
    confirmations: 'supervisors/confirmations',
    omniauths: 'supervisors/omniauth',
    passwords: 'supervisors/passwords',
    registrations: 'supervisors/registrations',
    sessions: 'supervisors/sessions',
    unlocks: 'supervisors/unlocks'
  }

  devise_for :admins, controllers: {
    confirmations: 'admins/confirmations',
    omniauths: 'admins/omniauth',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations',
    sessions: 'admins/sessions',
    unlocks: 'admins/unlocks'
  }

  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

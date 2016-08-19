Rails.application.routes.draw do
  get 'register/index'

  devise_for :contestants
  devise_for :supervisors, controllers: {
    confirmations: 'supervisors/confirmations',
    omniauths: 'supervisors/omniauth',
    passwords: 'supervisors/passwords',
    registrations: 'supervisors/registrations',
    sessions: 'supervisors/sessions',
  }

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
  }

  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

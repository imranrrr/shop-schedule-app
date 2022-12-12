Rails.application.routes.draw do
  resources :shop_schedules
  devise_for :admins, controllers: {
      sessions: 'admins/sessions',
      registrations: 'admins/registrations'
    }
  root "shops#index"
  resources :shops
end

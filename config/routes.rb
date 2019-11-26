Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: 'users#index'

  devise_for :teachers, path: 'teachers', controllers: {
    sessions: 'teachers/sessions',
    confirmations: 'teachers/confirmations',
    omniauthCallbacks: 'teachers/omniauth_callbacks',
    passwords: 'teachers/passwords',
    registrations: 'teachers/registrations',
    unlocks: 'teachers/unlocks',
    teachers: 'teachers'
  }

  devise_for :users, path: 'users', controllers: {
    sessions: 'users/sessions',
    confirmations: 'users/confirmations',
    omniauthCallbacks: 'users/omniauth_callbacks',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    unlocks: 'users/unlocks',
    users: 'users'
  }

  resources :users, only: [:index, :show]

  resources :teachers, only: [:index]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

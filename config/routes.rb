Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'choose', to: 'pages#choose'
  get 'join-activities', to: 'pages#join-activities'

  resources :attendees, only: [:index, :show]
  resources :dashboards, only: [:index]
  resources :events, only: [:index, :show, :checkout]
  resources :events do
    resources :attendees, only: [:index, :show], controller: 'events/attendees'
  end
  resources :after_signup
end

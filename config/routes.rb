Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'pages#home'

  get 'choose', to: 'pages#choose'
  get 'interest', to: 'pages#interest'
  get 'join_activities', to: 'pages#join_activities'


  resources :attendees, only: [:index, :show]
  resources :dashboards, only: [:index]
  resources :events, only: [:index, :show, :checkout]
  resources :events do
    resources :design, controller: 'events/design'
    resources :attendees, only: [:index, :show], controller: 'events/attendees'
  end

  get 'discover', to: 'events#search'
end

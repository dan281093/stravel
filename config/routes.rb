Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'pages#home'

  get 'choose', to: 'pages#choose'
  get 'interest', to: 'pages#interest'
  get 'join_activities', to: 'pages#join_activities'
  get 'events/search', to: 'events#search'
  get 'events/checkout', to: 'events#checkout'



  resources :attendees, only: [:index, :show]
  resources :dashboards, only: [:index]
  resources :events, only: [:index, :show]
  resources :events do
    resources :design, controller: 'events/design'
    resources :attendees, only: [:index, :show], controller: 'events/attendees'
    # resource :search, controller: 'events/search'
  end


end

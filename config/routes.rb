Rails.application.routes.draw do
  get 'attendees/index'
  get 'attendees/show'
  get 'dashboards/index'
  get 'events/index'
  get 'events/show'
  get 'events/checkout'
  get 'pages/home'
  get 'pages/choose'
  root to: 'pages#home'
  get 'choose', to: 'pages#choose'

  resources :attendees, only: [:index, :show]
  resources :dashboards, only: [:index]
  resources :events, only: [:index, :show, :checkout]
  resources :events do
    resources :attendees, only: [:index, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

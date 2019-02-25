Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'choose', to: 'pages#choose'

  resources :attendees, only: [:index, :show]
  resources :dashboards, only: [:index]
  resources :events, only: [:index, :show, :checkout]
  resources :events do
    resources :attendees, only: [:index, :show], controller: 'events/attendees'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

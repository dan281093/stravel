Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'pages#home'

  get 'choose', to: 'pages#choose'
  get 'interest', to: 'pages#interest'
  get 'join_activities', to: 'pages#join_activities'
  get 'events/search', to: 'events#search'
  get 'events/checkout', to: 'events#checkout'

  scope :users do
    resources :user_activities,
      only: [:new, :create],
      path: :activites,
      controller: "users/activities" do
        collection do
          get 'bulk_edit', to: "users/activities#edit"
          patch 'bulk_update', to: "users/activities#update"
        end
      end
  end




  # resources :attendees, only: [:index, :show]
  resources :dashboards, only: [:index]
  resources :events, only: [:index, :show, :update, :destroy]
  resources :events do
    resources :design, controller: 'events/design'
    resources :attendees, only: [:index, :show, :create, :update, :destroy], controller: 'events/attendees'
    # resource :search, controller: 'events/search'
  end


end

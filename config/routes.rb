Rails.application.routes.draw do
  get 'boats/index'
  get 'boats/show'
  get 'boats/create'
  get 'boats/destroy'
  get 'boats/new'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :boats, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:new, :create]
  end

  resources :boats, only: [:destroy]
end


#resources: bookings, only: [:new, :create]

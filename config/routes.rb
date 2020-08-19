Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :boats, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:destroy, :show]

end

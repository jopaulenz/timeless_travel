Rails.application.routes.draw do
  # Health check route
  devise_for :users
  devise_scope :user do
      root to: "devise/sessions#new"
  end

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Time travel routes
  resources :time_travels, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show, :destroy]
end

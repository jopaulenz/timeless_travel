Rails.application.routes.draw do
  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Time travel routes
  resources :time_travels, only: [:index, :show] do
    member do
      get 'book', to: 'booking#select_dates'
    end
  end

  # Root path route ("/")
  root 'time_travels#index'
end

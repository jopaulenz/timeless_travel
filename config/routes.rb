Rails.application.routes.draw do
  # Health check route
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Time travel routes
  resources :time_travels, only: [:index, :show] do
    member do
      get 'book', to: 'booking#select_dates'
    end
  end
end

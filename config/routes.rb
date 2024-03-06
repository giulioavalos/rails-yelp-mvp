Rails.application.routes.draw do
resources :restaurants do
  resources :reviews, only: [:new, :create]
end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    get '/restaurants', to: 'restaurants#index'
    get '/restaurants/new', to: 'restaurants#new'
    post '/restaurants', to: 'restaurants#create'
    get '/restaurants/:id', to: 'restaurants#show', as: 'restaurant'
    get '/restaurants/:id/reviews/new', to: 'reviews#new', as: 'new_review'
    post '/restaurants/:id/reviews', to: 'reviews#create', as: 'restaurant_reviews'


  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

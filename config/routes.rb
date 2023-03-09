Rails.application.routes.draw do
  resources :users
  resources :tracks
  resources :artists
  resources :albums

  # Custom routes
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/authorized', to: 'users#show'

  # route to test your configuration
  get '/hello', to: 'application#hello_world'

end

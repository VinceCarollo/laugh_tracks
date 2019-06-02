Rails.application.routes.draw do
  # resources :comedians
  root to: 'comedians#index'

  resources :comedians, only: [:index] do
    resources :specials, only: [:new, :create]
  end
  get '/comedians/new', to: 'comedians#new'
  post '/comedians', to: 'comedians#create'
  get '/comedians/:id', to: 'comedians#show', as: 'comedian'

  resources :users, only: [:new, :create]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#login'
  delete '/logout', to: 'sessions#logout'

  namespace :admin do
    resources :comedians, only: [:edit]
  end
end

Rails.application.routes.draw do
  # resources :comedians
  root to: 'comedians#index'

  resources :comedians, only: [:index] do
    resources :specials, only: [:new, :create]
  end
  get '/comedians/new', to: 'comedians#new'
  post '/comedians', to: 'comedians#create'
  get '/comedians/:id', to: 'comedians#show', as: 'comedian'
end

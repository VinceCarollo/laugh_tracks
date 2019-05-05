Rails.application.routes.draw do
  # resources :comedians
  root to: 'comedians#index'

  get '/comedians', to: 'comedians#index'
  get '/comedians/new', to: 'comedians#new'
  post '/comedians', to: 'comedians#create'
  get '/comedians/:id', to: 'comedians#show', as: 'comedian'
end

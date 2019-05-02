Rails.application.routes.draw do
  # resources :comedians
  get '/comedians', to: 'comedians#index'
  get '/comedians/:id', to: 'comedians#show', as: 'comedian'
end

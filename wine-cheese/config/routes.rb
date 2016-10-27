Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index'

  resources :users
  resources :posters
  resources :posts
  resources :reviewers
  resources :reviews
  resources :pairings
  resources :cheeses
  resources :cheese_brands
  resources :wines
  resources :wine_brands
  resources :categories
  resources :regions

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/destroy', to: 'sessions#destroy'
end

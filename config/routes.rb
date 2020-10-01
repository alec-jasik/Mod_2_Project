Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :destinations
  resources :pois
  resources :travelers
  resources :reviews
  resources :trips
  resources :wishlists
  resources :sessions
  resources :visit_reviews

  get '/sign_in', to: 'sessions#sign_in'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'
end

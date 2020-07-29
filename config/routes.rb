Rails.application.routes.draw do
  resources :wellness_reservations
  resources :wellness_centers
  resources :restaurant_reservations
  resources :restaurants
  resources :users
   get 'users/:id/showreservations', to: 'users#showreservations', as: 'showreservations'
   post '/restaurant_reservations/new', to: 'restaurant_reservations#create'
   get '/restaurant_reservations/:id/edit', to: 'restaurant_reservations#edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

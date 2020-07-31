Rails.application.routes.draw do
  resources :wellness_reservations
  resources :wellness_centers
  resources :restaurant_reservations
  resources :restaurants
  resources :users
   get 'users/:id/showreservations', to: 'users#showreservations', as: 'showreservations'
   post '/restaurant_reservations/new', to: 'restaurant_reservations#create'
   get '/restaurant_reservations/:id/edit', to: 'restaurant_reservations#edit'

   post '/wellness_reservations/new', to: 'wellness_reservations#create'
   get '/wellness_reservations/:id/edit', to: 'wellness_reservations#edit'

   get '/about', to: 'static#about'
   get '/assets/AdobeStock_260128861.jpeg', to: 'restaurants#index'
   get '/assets/AdobeStock_163003185.jpeg', to: 'wellnesscenter#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

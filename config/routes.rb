Rails.application.routes.draw do
  resources :master_services
  resources :booking_details
  resources :room_details
  resources :hotel_details
  devise_for :users
  root 'hotel_details#index'  
  get 'my_bookings', to: 'users#my_bookings'
  get 'all_bookings', to: 'users#all_bookings'
  get 'services', to: 'room_details#services'
  get 'details', to: 'room_details#details'
  # get 'booking_details', to: 'users#my_booking'
end

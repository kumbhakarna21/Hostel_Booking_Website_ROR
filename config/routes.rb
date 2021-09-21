Rails.application.routes.draw do
  
  devise_for :users
  root 'welcome#index'  
  get 'my_bookings', to: 'users#my_bookings'
  get 'all_bookings', to: 'users#all_bookings'
  # get 'booking_details', to: 'users#my_booking'
end

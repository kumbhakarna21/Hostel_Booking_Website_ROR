class UsersController < ApplicationController
  before_action :authenticate_user!
	def my_bookings
		#There Many be more than 1 hotels so check for it
		@booked_hotel = current_user.hotel_details.first
		#Get the booking details of this User 
		# Where it goes to BookingDetail Model
		@booking_details = BookingDetail.search(current_user,@booked_hotel)
		
	end

	def all_bookings
		@bookings = BookingDetail.all
	end
end

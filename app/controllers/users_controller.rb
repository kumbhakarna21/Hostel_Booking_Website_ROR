class UsersController < ApplicationController
  before_action :authenticate_user!
	def my_bookings
		
		#There Many be more than 1 hotels so check for it
		@booked_room = current_user.room_details.first
		if (@booked_room != nil)
		@hotel_details = @booked_room.hotel_detail
		end
		#Get the booking details of this User 
		# Where it goes to BookingDetail Model
		@booking_details = BookingDetail.where(user_id: current_user,room_detail_id: @booked_room).first
		
	end

	def all_bookings
		@bookings = BookingDetail.all
	end
end

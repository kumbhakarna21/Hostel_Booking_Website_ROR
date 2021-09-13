class BookingDetailsController < ApplicationController
	def create
		puts 'hie i am here'
		hotel = HotelDetail.get_details(params[:hotel_id])
		puts hotel.price
		# booking = BookingDetail.create(user_id: params[:user], hotel_detail_id: params[:hotel_id])
		
	end
end

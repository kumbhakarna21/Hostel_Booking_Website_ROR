class BookingDetailsController < ApplicationController
	def create
		
		#gettting hotel detail to be booked
		hotel = HotelDetail.get_details(params[:hotel_id])

		#Calculating total price w.r.t rooms and Days
		total = total_price(hotel.price,params[:rooms],params[:from],params[:to])

		#reducing Hotel rooms from Hotel detail tables
		hotel.rooms = (hotel.rooms).to_i - (params[:rooms]).to_i

		booking = BookingDetail.new(user_id: params[:user], hotel_detail_id: params[:hotel_id],total_price: total, from_date: params[:from], to_date: params[:to],total_rooms: params[:rooms])
		if booking.save && hotel.save
			flash[:notice] = "Congratulations your Booking was successfully done"
			redirect_to my_bookings_path
		else
			flash[:notice] = "Sorry your Booking was not successfully done TRY AGAIN"
			redirect_to hotel_detail_path
		end
		
	end

	private

	def total_price(price_per_day,no_of_rooms,from_date,to_date)
		total_days = Date.parse(to_date) - Date.parse(from_date)
		total_price = (price_per_day) * (no_of_rooms.to_i) * (total_days.to_i)
		return total_price.to_i
	end
end

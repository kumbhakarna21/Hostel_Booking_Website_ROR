class BookingDetailsController < ApplicationController
	def create
		
		#gettting hotel detail to be booked
		room = RoomDetail.find(params[:room_id])

		#Calculating total price w.r.t rooms and Days
		total = total_price(room.price_per,params[:from],params[:to])

		booking = BookingDetail.new(user_id: params[:user], room_detail_id: params[:room_id],total_price: total, from: params[:from], to: params[:to])
		if booking.save 
			flash[:notice] = "Congratulations your Booking was successfully done"
			redirect_to my_bookings_path
		else
			flash[:notice] = "Sorry your Booking was not successfully done TRY AGAIN"
			redirect_to hotel_detail_path
		end
		
	end

	def destroy
		booking_details = BookingDetail.where(user_id: params[:id], room_detail_id: params[:format].to_i).first
		booking_details.destroy
		flash[:notice] = "Your Booking was successfully cancelled"
		redirect_to my_bookings_path
	end

	private

	def total_price(price_per_day,from_date,to_date)
		total_days = Date.parse(to_date) - Date.parse(from_date)
		total_price = (price_per_day)  * (total_days.to_i)
		return total_price.to_i
	end
end

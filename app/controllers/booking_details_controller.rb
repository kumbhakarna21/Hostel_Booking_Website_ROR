class BookingDetailsController < ApplicationController
	def create
		# puts 'create method'
		hotel = HotelDetail.get_details(params[:hotel_id])
		total = total_price(hotel.price,params[:rooms],params[:from],params[:to])

		booking = BookingDetail.new(user_id: params[:user], hotel_detail_id: params[:hotel_id],total_price: total, from_date: params[:from], to_date: params[:to])
		if booking.save
			puts 'it is saved'
		end
		
	end

	private

	def total_price(price_per_day,no_of_rooms,from_date,to_date)
		total_days = Date.parse(to_date) - Date.parse(from_date)
		total_price = (price_per_day) * (no_of_rooms.to_i) * (total_days.to_i)
		return total_price.to_i
	end
end

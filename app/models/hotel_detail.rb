class HotelDetail < ApplicationRecord
	has_many :room_details
	has_one_attached :main_image

	validates :hotel_name, length: { minimum: 2, maximum: 30 } , presence: true
	validates :address, length: { minimum: 7, maximum: 30 } , presence: true

end

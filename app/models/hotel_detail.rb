class HotelDetail < ApplicationRecord
  validates :hotel_name, :address, :room_type, :price, :rooms, presence: true
end

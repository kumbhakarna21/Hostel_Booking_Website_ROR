class HotelDetail < ApplicationRecord
  has_one_attached :main_image
  has_many :booking_details
  has_many :users, through: :booking_details


  validates :hotel_name, :address, :room_type, :price, :rooms, presence: true

  def self.get_details(hotel_id)
    where(id: hotel_id).first
  end
end

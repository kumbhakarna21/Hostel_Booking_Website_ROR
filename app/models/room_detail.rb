class RoomDetail < ApplicationRecord
  belongs_to :hotel_detail
  has_many :booking_details
  has_many :users, through: :booking_details
  has_many_attached :images

  
  validates :room_type, length: { minimum: 5, maximum: 30 } , presence: true
  validates :price_per, numericality: { only_integer: true }, presence: true
  validates :bed_type, :room_view, length: { minimum: 5, maximum: 20 } , presence: true
  validates :room_size, numericality: { only_integer: true }, presence: true
end

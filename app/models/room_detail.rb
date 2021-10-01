class RoomDetail < ApplicationRecord
  belongs_to :hotel_detail
  has_many :booking_details
  has_many :users, through: :booking_details
  has_many_attached :images

  SERVICES = %i[ Work_Desk Free_Wi-Fi Air_Conditioning Electric_Kettle 24-hour_Room_Service Mineral_Water Bathroom 24-hour_Housekeeping 24-hour_In-room_Dining Laundry_Service Mini_Fridge 
                Clothes_Rack Hairdryer TV Hot_&_Cold_Water Reading_Lamp Electronic_Safe Woollen_Blanket Dental_Kit Closet Hangers Slippers In-house_Movies Bathrobes]

  validates :room_type, length: { minimum: 5, maximum: 30 } , presence: true
  validates :price_per, numericality: { greater_than: 0 }, presence: true
  validates :bed_type, :room_view, length: { minimum: 5, maximum: 20 } , presence: true
  validates :room_size, numericality: { greater_than: 0 } , presence: true
end

class BookingDetail < ApplicationRecord
  belongs_to :user
  belongs_to :hotel_detail

  # validates :total_price, :from_date, :to_date, presence: true

end

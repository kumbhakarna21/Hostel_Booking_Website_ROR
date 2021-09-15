class BookingDetail < ApplicationRecord
  belongs_to :user
  belongs_to :hotel_detail

  # validates :total_price, :from_date, :to_date, presence: true

  def self.search(u_id,h_id)
    where(user_id: u_id, hotel_detail_id: h_id).first
  end
end

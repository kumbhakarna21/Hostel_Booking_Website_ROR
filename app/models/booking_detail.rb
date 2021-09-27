class BookingDetail < ApplicationRecord
  belongs_to :user
  belongs_to :room_detail

  validates :from, :to, presence: true

end

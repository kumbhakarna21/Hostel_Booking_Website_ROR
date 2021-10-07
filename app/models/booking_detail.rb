class BookingDetail < ApplicationRecord
  before_destroy :check_date
  belongs_to :user
  belongs_to :room_detail

  validates :from, :to, presence: true

  def check_date
    if  Date.today <= self.from - 1
      return true
    else
      return false
    end
  end
end

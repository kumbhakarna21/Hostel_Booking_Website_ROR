class User < ApplicationRecord
  has_many :booking_details
  has_many :hotel_details, through: :booking_details
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

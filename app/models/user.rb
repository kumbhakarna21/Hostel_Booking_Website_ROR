class User < ApplicationRecord
  has_many :booking_details
  has_many :room_details, through: :booking_details
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, format: { with: /\A[^@\s]+@[^@\s]+\z/ }, presence: true
  validates :first_name, :last_name, length: { minimum: 5, maximum: 20 } , presence: true

  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


    def full_name
      return "#{first_name} #{last_name}" if first_name || last_name
      "Anonymous"
    end
end

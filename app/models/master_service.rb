class MasterService < ApplicationRecord
  has_many :room_services
  has_many :room_details, through: :room_services
  # has_and_belongs_to_many :room_details
end

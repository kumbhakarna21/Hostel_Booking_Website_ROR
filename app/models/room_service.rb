class RoomService < ApplicationRecord
  belongs_to :room_detail
  belongs_to :master_service

  def self.adding_services_to_room(room_id,service_id)
      RoomService.create(room_detail_id: room_id,master_service_id: service_id)
  end
end

class AddServicesToRoomDetails < ActiveRecord::Migration[6.1]
  def change
    add_column :room_details, :services, :text, array: true, default: []
  end
end

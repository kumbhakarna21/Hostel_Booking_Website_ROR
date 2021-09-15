class AddTotalRoomsToBookingDetails < ActiveRecord::Migration[6.1]
  def change
    add_column :booking_details, :total_rooms, :integer
  end
end

class CreateRoomServices < ActiveRecord::Migration[6.1]
  def change
    create_table :room_services do |t|
      t.references :room_detail, null: false, foreign_key: true
      t.references :master_service, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateRoomDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :room_details do |t|
      t.references :hotel_detail, null: false, foreign_key: true
      t.string :room_type
      t.decimal :price_per
      t.string :bed_type
      t.decimal :room_size
      t.string :room_view

      t.timestamps
    end
  end
end

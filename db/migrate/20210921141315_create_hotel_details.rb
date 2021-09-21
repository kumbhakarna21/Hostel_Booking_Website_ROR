class CreateHotelDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :hotel_details do |t|
      t.string :hotel_name
      t.text :address

      t.timestamps
    end
  end
end

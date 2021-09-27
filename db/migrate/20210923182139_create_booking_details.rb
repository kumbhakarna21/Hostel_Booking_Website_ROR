class CreateBookingDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :booking_details do |t|
      t.references :user, null: false, foreign_key: true
      t.references :room_detail, null: false, foreign_key: true
      t.decimal :total_price
      t.date :from
      t.date :to

      t.timestamps
    end
  end
end

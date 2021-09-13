class CreateBookingDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :booking_details do |t|
      t.references :user, null: false, foreign_key: true
      t.references :hotel_detail, null: false, foreign_key: true
      t.decimal :total_price
      t.date :from_date
      t.date :to_date

      t.timestamps
    end
  end
end

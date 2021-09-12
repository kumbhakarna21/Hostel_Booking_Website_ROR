json.extract! hotel_detail, :id, :hotel_name, :address, :room_type, :price, :rooms, :created_at, :updated_at
json.url hotel_detail_url(hotel_detail, format: :json)

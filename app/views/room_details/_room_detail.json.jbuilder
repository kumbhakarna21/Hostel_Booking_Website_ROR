json.extract! room_detail, :id, :hotel_detail_id, :room_type, :price_per, :bed_type, :room_size, :room_view, :created_at, :updated_at
json.url room_detail_url(room_detail, format: :json)

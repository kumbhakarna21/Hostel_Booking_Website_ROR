json.extract! hotel_detail, :id, :hotel_name, :address, :created_at, :updated_at
json.url hotel_detail_url(hotel_detail, format: :json)

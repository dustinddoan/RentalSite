json.extract! house, :id, :name, :address, :price, :latitude, :longitude, :user_id, :picture, :created_at, :updated_at
json.url house_url(house, format: :json)

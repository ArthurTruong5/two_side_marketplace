json.extract! listing, :id, :name, :price, :difficulty, :description, :time, :volenteer, :created_at, :updated_at
json.url listing_url(listing, format: :json)

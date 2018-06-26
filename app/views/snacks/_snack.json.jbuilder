json.extract! snack, :id, :title, :brand, :type, :description, :price, :created_at, :updated_at
json.url snack_url(snack, format: :json)

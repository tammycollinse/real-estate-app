json.extract! listing, :id, :title, :location, :address, :home_description, :home_type, :bed, :bath, :price, :sq_feet, :images, :created_at, :updated_at
json.url listing_url(listing, format: :json)

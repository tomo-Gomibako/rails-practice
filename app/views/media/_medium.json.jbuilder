json.extract! medium, :id, :title, :description, :medium, :url_large, :url_medium, :url_small, :created_at, :updated_at
json.url medium_url(medium, format: :json)

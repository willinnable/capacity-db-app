json.extract! resource, :id, :name, :code, :capacity, :comments, :created_at, :updated_at
json.url resource_url(resource, format: :json)

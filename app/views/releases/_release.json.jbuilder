json.extract! release, :id, :name, :comments, :release_date, :created_at, :updated_at
json.url release_url(release, format: :json)

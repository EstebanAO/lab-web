json.extract! announcement, :id, :description, :created_at, :updated_at
json.url announcement_url(announcement, format: :json)

json.extract! document, :id, :description, :url, :created_at, :updated_at
json.url document_url(document, format: :json)

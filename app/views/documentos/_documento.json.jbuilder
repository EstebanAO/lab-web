json.extract! documento, :id, :descripcion, :url, :created_at, :updated_at
json.url documento_url(documento, format: :json)

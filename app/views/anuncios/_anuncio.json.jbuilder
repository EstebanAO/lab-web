json.extract! anuncio, :id, :descripcion, :fecha, :created_at, :updated_at
json.url anuncio_url(anuncio, format: :json)

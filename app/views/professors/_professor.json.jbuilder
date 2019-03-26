json.extract! professor, :id, :name, :father_last_name, :mother_last_name, :email, :office, :resume, :professor_type, :created_at, :updated_at
json.url professor_url(professor, format: :json)

json.extract! profile, :id, :name, :email, :tel, :gender, :created_at, :updated_at
json.url profile_url(profile, format: :json)

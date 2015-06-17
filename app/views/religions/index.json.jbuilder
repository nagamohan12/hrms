json.array!(@religions) do |religion|
  json.extract! religion, :id, :name
  json.url religion_url(religion, format: :json)
end

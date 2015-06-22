json.array!(@addresses) do |address|
  json.extract! address, :id, :permanent, :present, :emergency, :user_id
  json.url address_url(address, format: :json)
end

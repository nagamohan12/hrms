json.array!(@holidays) do |holiday|
  json.extract! holiday, :id, :name, :date, :year
  json.url holiday_url(holiday, format: :json)
end

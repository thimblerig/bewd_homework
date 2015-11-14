json.array!(@cars) do |car|
  json.extract! car, :id, :make, :model, :year, :color, :nickname
  json.url car_url(car, format: :json)
end

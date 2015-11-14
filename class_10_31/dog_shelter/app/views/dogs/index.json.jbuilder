json.array!(@dogs) do |dog|
  json.extract! dog, :id, :name, :breed, :color, :size_in, :age_year, :age_week
  json.url dog_url(dog, format: :json)
end

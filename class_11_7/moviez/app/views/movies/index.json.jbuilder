json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :year, :director_id
  json.url movie_url(movie, format: :json)
end

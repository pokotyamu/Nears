json.array!(@places) do |place|
  json.extract! place, :id, :title, :exp, :lat, :lon
  json.url place_url(place, format: :json)
end

json.array!(@trips) do |trip|
  json.extract! trip, :id, :name, :route_id
  json.url trip_url(trip, format: :json)
end

json.array!(@point_types) do |point_type|
  json.extract! point_type, :id
  json.url point_type_url(point_type, format: :json)
end

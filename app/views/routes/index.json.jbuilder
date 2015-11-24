json.array!(@routes) do |route|
  json.extract! route, :id, :number, :name, :circulator
  json.url route_url(route, format: :json)
end

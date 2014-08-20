json.array!(@fish) do |fish|
  json.extract! fish, :id, :species, :location, :bait
  json.url fish_url(fish, format: :json)
end

json.array!(@part2_offerings) do |part2_offering|
  json.extract! part2_offering, :id, :title, :description, :link
  json.url part2_offering_url(part2_offering, format: :json)
end

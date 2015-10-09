json.array!(@counterparies) do |counterpary|
  json.extract! counterpary, :id, :name, :address, :city, :state, :zip, :occupation, :office
  json.url counterpary_url(counterpary, format: :json)
end

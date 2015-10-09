json.array!(@committees) do |committee|
  json.extract! committee, :id, :name, :abbreviation, :phone, :address, :zip, :city, :state, :party, :candidate_id
  json.url committee_url(committee, format: :json)
end

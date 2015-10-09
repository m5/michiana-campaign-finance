json.array!(@candidates) do |candidate|
  json.extract! candidate, :id, :name, :party, :office, :county
  json.url candidate_url(candidate, format: :json)
end

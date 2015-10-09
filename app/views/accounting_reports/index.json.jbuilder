json.array!(@accounting_reports) do |accounting_report|
  json.extract! accounting_report, :id, :committee_id, :type, :period_start, :period_end, :ammendment, :cash_year_start, :cash_period_start, :contributions_itemized, :contributions_itemized_ytd, :contributions_unitemized, :contributions_unitemized_ytd, :expenditures_itemized, :expenditures_unitemized, :expenditures_itemized_ytd, :expenditures_unitemized_ytd, :debts_owed_to, :debts_owed_by, :signed_at, :source_url
  json.url accounting_report_url(accounting_report, format: :json)
end

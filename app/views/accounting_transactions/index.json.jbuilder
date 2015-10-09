json.array!(@accounting_transactions) do |accounting_transaction|
  json.extract! accounting_transaction, :id, :counterparty_id, :date, :amount, :amount_ytd, :type, :nature
  json.url accounting_transaction_url(accounting_transaction, format: :json)
end

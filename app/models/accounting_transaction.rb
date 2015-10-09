class AccountingTransaction < ActiveRecord::Base
  belongs_to :counterparty
end

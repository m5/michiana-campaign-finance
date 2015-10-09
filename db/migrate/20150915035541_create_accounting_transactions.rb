class CreateAccountingTransactions < ActiveRecord::Migration
  def change
    create_table :accounting_transactions do |t|
      t.references :counterparty, index: true
      t.date :date
      t.decimal :amount
      t.decimal :amount_ytd
      t.string :type
      t.string :nature

      t.timestamps null: false
    end
    add_foreign_key :accounting_transactions, :counterparties
  end
end

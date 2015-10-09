class CreateAccountingReports < ActiveRecord::Migration
  def change
    create_table :accounting_reports do |t|
      t.references :committee, index: true
      t.string :type
      t.date :period_start
      t.date :period_end
      t.boolean :ammendment
      t.decimal :cash_year_start
      t.decimal :cash_period_start
      t.decimal :contributions_itemized
      t.decimal :contributions_itemized_ytd
      t.decimal :contributions_unitemized
      t.decimal :contributions_unitemized_ytd
      t.decimal :expenditures_itemized
      t.decimal :expenditures_unitemized
      t.decimal :expenditures_itemized_ytd
      t.decimal :expenditures_unitemized_ytd
      t.decimal :debts_owed_to
      t.decimal :debts_owed_by
      t.date :signed_at
      t.string :source_url

      t.timestamps null: false
    end
    add_foreign_key :accounting_reports, :committees
  end
end

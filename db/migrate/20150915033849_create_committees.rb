class CreateCommittees < ActiveRecord::Migration
  def change
    create_table :committees do |t|
      t.string :name
      t.string :abbreviation
      t.string :phone
      t.string :address
      t.string :zip
      t.string :city
      t.string :state
      t.string :party
      t.references :candidate, index: true

      t.timestamps null: false
    end
    add_foreign_key :committees, :candidates
  end
end

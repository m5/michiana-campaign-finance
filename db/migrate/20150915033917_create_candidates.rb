class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :party
      t.string :office
      t.string :county

      t.timestamps null: false
    end
  end
end

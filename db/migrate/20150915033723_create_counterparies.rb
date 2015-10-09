class CreateCounterparies < ActiveRecord::Migration
  def change
    create_table :counterparies do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :occupation
      t.string :office

      t.timestamps null: false
    end
  end
end

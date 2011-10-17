class AddCountries < ActiveRecord::Migration
  def up
    create_table :countries do |t|
      t.string :name
      t.string :alpha_2_code
      t.string :alpha_3_code
      t.text :description
 
      t.timestamps
    end
  end

  def down
    drop_table :countries
  end
end

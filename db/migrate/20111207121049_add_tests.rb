class AddTests < ActiveRecord::Migration
  def up
    create_table :tests do |t|
      t.string :name
      t.string :status
      t.text :description
 
      t.timestamps
    end
  end

  def down
    drop_table :tests
  end
end

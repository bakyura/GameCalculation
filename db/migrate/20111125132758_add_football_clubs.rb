class AddFootballClubs < ActiveRecord::Migration
  def up
    create_table :football_clubs do |t|
      t.string :name
      t.string :alias
      t.integer :league
      t.text :description
      t.string :web_site
      t.string :logo
 
      t.timestamps
    end
  end

  def down
    drop_table :football_clubs
  end
end

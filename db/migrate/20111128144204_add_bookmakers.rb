class AddBookmakers < ActiveRecord::Migration
  def up
    create_table :bookmakers do |t|
      t.string :name
      t.string :web_site
      t.text :description
      
      t.timestamps
    end
  end

  def down
    drop_table :bookmakers
  end
end

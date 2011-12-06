class AddNews < ActiveRecord::Migration
  def up
    create_table :news do |t|
      t.string :title
      t.string :description
      t.string :image
      t.text :body
      t.boolean :is_show, :default => true
 
      t.timestamps
    end
  end

  def down
    drop_table :news
  end
end

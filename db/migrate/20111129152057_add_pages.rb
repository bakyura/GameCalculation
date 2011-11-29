class AddPages < ActiveRecord::Migration
    def up
    create_table :pages do |t|
      t.string :name
      t.string :alias
      t.string :title
      t.text :body
 
      t.timestamps
    end
  end

  def down
    drop_table :pages
  end
end

class AddPredictions < ActiveRecord::Migration
  def up
    create_table :predictions do |t|
      t.integer :game_id
      t.string :win_home
      t.string :win_quest
      t.string :draw_result
      t.string :goals_home
      t.string :goals_quest
      t.boolean :is_recommended, :boolean, :default => false
      
      t.text :comment
 
      t.timestamps
    end
  end

  def down
    drop_table :predictions
  end
end

class AddBettingPredictions < ActiveRecord::Migration
  def up
    create_table :betting_predictions do |t|
      t.integer :game_id
      t.integer :bookmaker_id
      t.string :r_1
      t.string :r_x
      t.string :r_2
      t.text :comment
 
      t.timestamps
    end
  end

  def down
    drop_table :betting_predictions
  end
end

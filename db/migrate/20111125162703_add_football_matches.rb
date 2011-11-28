class AddFootballMatches < ActiveRecord::Migration
  def up
    create_table :football_matches do |t|
      t.integer :home_team
      t.integer :quest_team
      t.integer :home_goals
      t.integer :quest_goals
      t.date :game_date
      t.integer :tour
      t.integer :league
      
      t.timestamps
    end
  end

  def down
    drop_table :football_clubs
  end
end

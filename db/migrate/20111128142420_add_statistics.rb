class AddStatistics < ActiveRecord::Migration
  def up
    create_table :statistics do |t|
      t.integer :fc_id
      t.integer :wins
      t.integer :draws
      t.integer :loss
      t.integer :home_wins
      t.integer :home_draws
      t.integer :home_loss
      t.integer :quest_wins
      t.integer :quest_draws
      t.integer :quest_loss
      t.integer :goals_wins
      t.integer :goals_loss
      t.integer :goals_wins_home
      t.integer :goals_loss_home
      t.integer :goals_wins_quest
      t.integer :goals_loss_quest
      t.integer :wins_last_month
      t.integer :draws_last_month
      t.integer :loss_last_month
      t.integer :home_wins_last_month
      t.integer :home_draws_last_month
      t.integer :home_loss_last_month
      t.integer :quest_wins_last_month
      t.integer :quest_draws_last_month
      t.integer :quest_loss_last_month
      t.integer :goals_wins_last_month
      t.integer :goals_loss_last_month
      t.integer :goals_wins_home_last_month
      t.integer :goals_loss_home_last_month
      t.integer :goals_wins_quest_last_month
      t.integer :goals_loss_quest_last_month
      t.integer :wins_top_teams
      t.integer :draws_top_teams
      t.integer :loss_top_teams
      t.integer :home_wins_top_teams
      t.integer :home_draws_top_teams
      t.integer :home_loss_top_teams
      t.integer :quest_wins_top_teams
      t.integer :quest_draws_top_teams
      t.integer :quest_loss_top_teams
      t.integer :goals_wins_top_teams
      t.integer :goals_loss_top_teams
      t.integer :goals_wins_home_top_teams
      t.integer :goals_loss_home_top_teams
      t.integer :goals_wins_quest_top_teams
      t.integer :goals_loss_quest_top_teams
      t.integer :wins_bottom_teams
      t.integer :draws_bottom_teams
      t.integer :loss_bottom_teams
      t.integer :home_wins_bottom_teams
      t.integer :home_draws_bottom_teams
      t.integer :home_loss_bottom_teams
      t.integer :quest_wins_bottom_teams
      t.integer :quest_draws_bottom_teams
      t.integer :quest_loss_bottom_teams
      t.integer :goals_wins_bottom_teams
      t.integer :goals_loss_bottom_teams
      t.integer :goals_wins_home_bottom_teams
      t.integer :goals_loss_home_bottom_teams
      t.integer :goals_wins_quest_bottom_teams
      t.integer :goals_loss_quest_bottom_teams
      t.integer :wins_mid_teams
      t.integer :draws_mid_teams
      t.integer :loss_mid_teams
      t.integer :home_wins_mid_teams
      t.integer :home_draws_mid_teams
      t.integer :home_loss_mid_teams
      t.integer :quest_wins_mid_teams
      t.integer :quest_draws_mid_teams
      t.integer :quest_loss_mid_teams
      t.integer :goals_wins_mid_teams
      t.integer :goals_loss_mid_teams
      t.integer :goals_wins_home_mid_teams
      t.integer :goals_loss_home_mid_teams
      t.integer :goals_wins_quest_mid_teams
      t.integer :goals_loss_quest_mid_teams 
 
      t.timestamps
    end
  end

  def down
    drop_table :statistics
  end
end

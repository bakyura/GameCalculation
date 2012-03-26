class Add25TourPredictions < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    team = FootballClub.first(:conditions => {:alias => 'stuttgart'}) 
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 25, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment` ,`created_at`, `updated_at`) VALUES
        ('#{game1.id}', '40', '30', '30', '3', '1', '1', 'Team1 - 2 goals: 30%<br />Team1 - more 1 goals: 40%<br />Team2 - 1 goal: 30%<br />Team2 - 0 goals: 30%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'wolfsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 25, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '30', '30', '40', '1', '1', '0', 'Team1 -  1 goals: 30%<br />Team1 - 1 goals: 30%<br />Team2 - 0 goal: 20%<br />Team2 - 2 goals: 20%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    	
    team = FootballClub.first(:conditions => {:alias => 'mainz'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 25, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '30', '30', '40', '0', '0', '0', 'Team1 - more 1 goals: 30%<br />Team1 - 1 goal: 30%<br />Team2 - 1 goal: 30%<br />Team2 - 0 goals: 30%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    	
    team = FootballClub.first(:conditions => {:alias => 'borussiam'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 25, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '40', '30', '30', '2', '1', '0', 'Team1 - more 1 goals: 30%<br />Team1 - 1 goal: 40%<br />Team2 - 1 goal: 30%<br />Team2 - 2 goals: 20%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'bayern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 25, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '40', '30', '30', '2', '0', '1', 'Team1 - 1 goals: 50%<br />Team1 - 2 goal: 40%<br />Team2 - more 1 goal: 20%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'keln'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 25, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '30', '30', '40', '1', '1', '0', 'Team1 - 1 goal: 30%<br />Team1 - 0 goals: 30%<br />Team2 - 0 goal: 30%<br />Team2 - 1 goal: 30%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'augsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 25, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '20', '40', '40', '0', '1', '0', 'Team1 - 1 goals: 30%<br />Team1 - 2 goal: 20%<br />Team2 - 1 goals: 30%<br />Team2 - 0 goal: 20%<br />Borussia have 8 wins at last 8 matches. Borussia is favorite but is exist possibility of 0:0 or 1:1 result because series of 8 wins is very long.', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'werder'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 25, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '30', '30', '40', '1', '1', '0', 'Team1 - more 0 goals: 40%<br />Team1 - 1 goal: 30%<br />Team2 - 1 goal: 30%<br />Team2 - 0 goal: 20%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'shalke04'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 25, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '40', '30', '30', '2', '0', '0', 'Team1 - 2 goals: 30%<br />Team1 - 1 goals: 40%<br />Team2 - 1 goal: 30%<br />Team2 - 0 goals: 30%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
  end

  def down
  end
end
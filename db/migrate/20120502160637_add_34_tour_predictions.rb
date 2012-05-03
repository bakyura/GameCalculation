class Add34TourPredictions < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    team = FootballClub.first(:conditions => {:alias => 'mainz'}) 
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 34, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `is_extreme_bet`, `is_double_bet`, `comment` ,`created_at`, `updated_at`) VALUES
        ('#{game1.id}', '33', '33', '34', '0', '0', '0', '0', '0', 'Team1 - 1 goals: 25%<br />Team1 - 0 goals: 30%<br />Team2 - 1 goal: 25%<br />Team2 - 0 goals: 30%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'nurnberg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 34, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `is_extreme_bet`, `is_double_bet`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '34', '33', '33', '2', '1', '0', '0', '1', 'Team1 -  1 goals: 30%<br />Team1 - 2 goals: 30%<br />Team2 - 1 goal: 30%<br />Team2 - 2 goals: 25%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    	
    team = FootballClub.first(:conditions => {:alias => 'keln'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 34, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `is_extreme_bet`, `is_double_bet`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '31', '36', '33', '0', '2', '0', '0', '0', 'Team1 - 1 goals: 20%<br />Team1 - 0 goal: 25%<br />Team2 - 1 goal: 30%<br />Team2 - 2 goals: 30%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    	
    team = FootballClub.first(:conditions => {:alias => 'werder'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 34, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `is_extreme_bet`, `is_double_bet`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '33', '34', '33', '1', '2', '0', '0', '1', 'Team1 - 1 goals: 25%<br />Team1 - 2 goal: 20%<br />Team2 - 1 goal: 30%<br />Team2 - 2 goals: 30%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'augsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 34, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `is_extreme_bet`, `is_double_bet`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '33', '32', '35', '1', '1', '0', '0', '0', 'Team1 - 1 goals: 30%<br />Team1 - 0 goal: 30%<br />Team2 - 1 goal: 25%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'borussiad'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 34, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `is_extreme_bet`, `is_double_bet`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '36', '32', '32', '2', '1', '0', '1', '0', 'Team1 - 1 goal: 30%<br />Team1 - 2 goals: 30%<br />Team2 - 1 goal: 30%<br />Team2 - 2 goal: 20%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hannover'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 34, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `is_extreme_bet`, `is_double_bet`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '36', '32', '32', '2', '1', '1', '0', '0', 'Team1 - 1 goals: 40%<br />Team1 - 2 goal: 30%<br />Team2 - 1 goals: 20%<br />Team2 - 0 goal: 20%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'gerta'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 34, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `is_extreme_bet`, `is_double_bet`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '35', '32', '33', '1', '0', '0', '1', '0', 'Team1 - more 1 goals: 25%<br />Team1 - 1 goals: 30%<br />Team2 - more 1 goal: 20%<br />Team2 - 1 goal: 25%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'stuttgart'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 34, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `is_extreme_bet`, `is_double_bet`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '36', '30', '34', '3', '1', '0', '0', '0', 'Team1 - 1 goals: 30%<br />Team1 - 2 goals: 30%<br />Team2 - 1 goal: 25%<br />Team2 - 2 goals: 20%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
  end

  def down
  end
end

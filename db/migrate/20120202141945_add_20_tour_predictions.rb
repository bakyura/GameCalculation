class Add20TourPredictions < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    team = FootballClub.first(:conditions => {:alias => 'nurnberg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment` ,`created_at`, `updated_at`) VALUES
        ('#{game1.id}', '32', '36', '32', '0', '2', '0', 'Team1 - more 2 goals: 10%<br />Team1 - more 1 goals: 20%<br />Team2 - 1 goal: 40%<br />Team2 - 2 goals: 40%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'gerta'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '33', '33', '34', '1', '1', '0', 'Team1 - more 2 goals: 20%<br />Team1 - more 1 goals: 25%<br />Team2 - 1 goal: 30%<br />Team2 - 2 goals: 20%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    	
    team = FootballClub.first(:conditions => {:alias => 'shalke04'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '36', '31', '33', '3', '1', '1', 'Team1 - more 2 goals: 35%<br />Team1 - 2 goal: 25%<br />Team2 - 1 goal: 20%<br />Team2 - more 1 goals: 15%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    	
    team = FootballClub.first(:conditions => {:alias => 'bayer'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '35', '32', '33', '3', '1', '0', 'Team1 - more 1 goals: 40%<br />Team1 - 1 goal: 50%<br />Team2 - 1 goal: 20%<br />Team2 - more 2 goals: 15%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'wolfsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '33', '33', '34', '1', '1', '0', 'Team1 - more 2 goals: 20%<br />Team1 - 1 goal: 30%<br />Team2 - more 1 goal: 30%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hoffenheim'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '35', '32', '33', '2', '0', '0', 'Team1 - more 2 goals: 30%<br />Team1 - 2 goals: 40%<br />Team2 - 1 goal: 20%<br />Team2 - 2 goals: 10%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hamburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '31', '36', '34', '1', '2', '1', 'Team1 - more 1 goals: 20%<br />Team1 - 1 goal: 25%<br />Team2 - 2 goals: 30%<br />Team2 - more 1 goals: 55%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'freiburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '33', '34', '33', '1', '1', '0', 'Team1 - more 1 goals: 20%<br />Team1 - 1 goals: 30%<br />Team2 - more 1 goal: 25%<br />Team2 - 1 goal: 40%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'kaiserslautern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '34', '33', '33', '1', '0', '0', 'Team1 - more 1 goals: 30%<br />Team1 - 1 goals: 40%<br />Team2 - 1 goal: 20%<br />Team2 - 0 goals: 50%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
  end
  
  def down
  end
end

class Add18TourPredictions < ActiveRecord::Migration
  def up
      league = League.first(:conditions => {:country => 'DEU'})
    team = FootballClub.first(:conditions => {:alias => 'bayer'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 18, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment` ,`created_at`, `updated_at`) VALUES
        ('#{game1.id}', '35', '32', '33', '2', '0', '0', 'Team1 - more 2 goals: 40%<br />Team1 - more 1 goals: 70%<br />Team2 - 1 goal: 30%<br />Team2 - 0 goals: 40%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'shalke04'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 18, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '37', '30', '33', '3', '1', '1', 'Team1 - more 2 goals: 50%<br />Team1 - more 1 goals: 70%<br />Team2 - 1 goal: 30%<br />Team2 - 0 goals: 40%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    	
    team = FootballClub.first(:conditions => {:alias => 'hamburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 18, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '30', '36', '34', '1', '2', '0', 'Team1 - more 2 goals: 15%<br />Team1 - 2 goals: 20%<br />Team2 - 1 goal: 50%<br />Team2 - more 1 goals: 50%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    	
    team = FootballClub.first(:conditions => {:alias => 'nurnberg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 18, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '34', '32', '34', '1', '1', '0', 'Team1 - more 1 goals: 40%<br />Team1 - 1 goal: 40%<br />Team2 - 1 goal: 30%<br />Team2 - more 2 goals: 20%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'freiburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 18, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '33', '33', '34', '2', '2', '0', 'Team1 - more 2 goals: 30%<br />Team1 - 1 goal: 40%<br />Team2 - 1 goal: 65%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'kaiserslautern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 18, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '33', '33', '34', '2', '2', '0', 'Team1 - more 2 goals: 30%<br />Team1 - 2 goals: 35%<br />Team2 - 1 goal: 50%<br />Team2 - 2 goals: 30%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'wolfsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 18, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '35', '32', '33', '2', '1', '0', 'Team1 - more 2 goals: 45%<br />Team1 - 2 goals: 40%<br />Team2 - more 1 goals: 55%<br />Team2 - more 0 goals: 60%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'borussiam'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 18, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '32', '34', '34', '1', '1', '0', 'Team1 - more 1 goals: 35%<br />Team1 - 1 goals: 55%<br />Team2 - more 1 goal: 40%<br />Team2 - 1 goal: 60%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hoffenheim'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 18, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '35', '32', '33', '2', '0', '0', 'Team1 - more 2 goals: 30%<br />Team1 - 2 goals: 40%<br />Team2 - 1 goal: 50%<br />Team2 - 0 goals: 60%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
  end

  def down
  end
end

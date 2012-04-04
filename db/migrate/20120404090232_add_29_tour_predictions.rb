class Add29TourPredictions < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    team = FootballClub.first(:conditions => {:alias => 'wolfsburg'}) 
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 29, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment` ,`created_at`, `updated_at`) VALUES
        ('#{game1.id}', '30', '30', '40', '1', '1', '0', 'Team1 - 1 goals: 30%<br />Team1 - 0 goals: 30%<br />Team2 - 1 goal: 30%<br />Team2 - 0 goals: 20%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'keln'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 29, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '40', '30', '30', '1', '0', '0', 'Team1 -  1 goals: 30%<br />Team1 - 2 goals: 20%<br />Team2 - 1 goal: 30%<br />Team2 - 0 goals: 20%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    	
    team = FootballClub.first(:conditions => {:alias => 'stuttgart'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 29, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '40', '30', '30', '2', '1', '0', 'Team1 - 2 goals: 30%<br />Team1 - 1 goal: 40%<br />Team2 - 1 goal: 30%<br />Team2 - 0 goals: 20%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    	
    team = FootballClub.first(:conditions => {:alias => 'freiburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 29, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '40', '30', '30', '2', '1', '0', 'Team1 - more 1 goals: 30%<br />Team1 - 1 goal: 40%<br />Team2 - 1 goal: 30%<br />Team2 - 0 goals: 20%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'kaiserslautern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 29, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '30', '30', '40', '1', '1', '1', 'Team1 - 1 goals: 30%<br />Team1 - 2 goal: 20%<br />Team2 - more 1 goal: 20%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'bayern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 29, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '50', '20', '30', '2', '0', '1', 'Team1 - 1 goal: 40%<br />Team1 - more 1 goals: 40%<br />Team2 - 0 goal: 30%<br />Team2 - 1 goal: 30%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'borussiam'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 29, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '40', '30', '30', '2', '1', '0', 'Team1 - 1 goals: 30%<br />Team1 - 2 goal: 30%<br />Team2 - 1 goals: 30%<br />Team2 - 2 goal: 20%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'shalke04'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 29, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '40', '30', '30', '2', '1', '0', 'Team1 - more 1 goals: 30%<br />Team1 - 1 goals: 40%<br />Team2 - more 1 goal: 20%<br />Team2 - 1 goal: 30%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hamburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 29, :home_team => team.id})
    execute <<-endsql
      INSERT INTO predictions (`game_id`, `win_home`, `win_quest`, `draw_result`, `goals_home`, `goals_quest`, `is_recommended`, `comment`, `created_at`, `updated_at`) VALUES
        ('#{game1.id}', '30', '40', '30', '2', '2', '0', 'Team1 - 0 goals: 20%<br />Team1 - 1 goals: 30%<br />Team2 - 1 goal: 30%<br />Team2 - 2 goals: 20%', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
  end

  def down
  end
end

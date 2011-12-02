class AddBettingPredictionsForbundesliga15Tour < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    team = FootballClub.first(:conditions => {:alias => 'bayer'})
    will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 15, :home_team => team.id})
    execute <<-endsql
      INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
        ('#{game1.id}', '#{will_hill.id}', '8/11', '15/4', '18/5'),
        ('#{game1.id}', '#{bet_365.id}', '8/11', '11/4', '7/2'),
        ('#{game1.id}', '#{unibet.id}', '1.75', '3.45', '4.65')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'bayern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 15, :home_team => team.id})
    execute <<-endsql
      INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
        ('#{game1.id}', '#{will_hill.id}', '3/10', '9/2', '8/1'),
        ('#{game1.id}', '#{bet_365.id}', '3/10', '9/2', '8/1'),
        ('#{game1.id}', '#{unibet.id}', '1.75', '3.45', '4.65')
    endsql
    	
    team = FootballClub.first(:conditions => {:alias => 'freiburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 15, :home_team => team.id})
    execute <<-endsql
      INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
        ('#{game1.id}', '#{will_hill.id}', '7/5', '23/10', '19/10'),
        ('#{game1.id}', '#{bet_365.id}', '11/8', '12/5', '15/8'),
        ('#{game1.id}', '#{unibet.id}', '2.75', '3.40', '3.00')
    endsql
    	
    team = FootballClub.first(:conditions => {:alias => 'kaiserslautern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 15, :home_team => team.id})
    execute <<-endsql
      INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
        ('#{game1.id}', '#{will_hill.id}', '7/5', '23/10', '15/8'),
        ('#{game1.id}', '#{bet_365.id}', '7/5', '23/10', '15/8'),
        ('#{game1.id}', '#{unibet.id}', '2.35', '3.35', '2.85')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'wolfsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 15, :home_team => team.id})
    execute <<-endsql
      INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
        ('#{game1.id}', '#{will_hill.id}', '13/10', '12/5', '2/1'),
        ('#{game1.id}', '#{bet_365.id}', '11/8', '12/5', '15/8'),
        ('#{game1.id}', '#{unibet.id}', '2.40', '3.40', '2.75')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'borussiam'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 15, :home_team => team.id})
    execute <<-endsql
      INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
        ('#{game1.id}', '#{will_hill.id}', '13/5', '5/2', 'EVS'),
        ('#{game1.id}', '#{bet_365.id}', '12/5', '12/5', '11/10'),
        ('#{game1.id}', '#{unibet.id}', '3.55', '3.40', '2.00')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'stuttgart'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 15, :home_team => team.id})
    execute <<-endsql
      INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
        ('#{game1.id}', '#{will_hill.id}', '4/9', '10/3', '6/1'),
        ('#{game1.id}', '#{bet_365.id}', '4/9', '16/5', '13/2'),
        ('#{game1.id}', '#{unibet.id}', '1.48', '4.05', '6.50')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hamburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 15, :home_team => team.id})
    execute <<-endsql
      INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
        ('#{game1.id}', '#{will_hill.id}', '10/11', '12/5', '3/1'),
        ('#{game1.id}', '#{bet_365.id}', '10/11', '12/5', '3/1'),
        ('#{game1.id}', '#{unibet.id}', '1.85', '3.45', '4.10')
    endsql
    
    team = FootballClub.first(:conditions => {:alias => 'shalke04'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 15, :home_team => team.id})
    execute <<-endsql
      INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
        ('#{game1.id}', '#{will_hill.id}', '4/11', '15/4', '7/1'),
        ('#{game1.id}', '#{bet_365.id}', '4/11', '15/4', '15/2'),
        ('#{game1.id}', '#{unibet.id}', '1.38', '4.30', '8.50')
    endsql
  end

  def down
  end
end

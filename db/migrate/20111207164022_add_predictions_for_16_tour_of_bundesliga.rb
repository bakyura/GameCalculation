class AddPredictionsFor16TourOfBundesliga < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    team = FootballClub.first(:conditions => {:alias => 'gerta'})
    will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 16, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.75', '3.30', '2.50'),
('#{game1.id}', '#{bet_365.id}', '7/4', '23/10', '6/4'),
('#{game1.id}', '#{unibet.id}', '2.55', '3.40', '2.60')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'werder'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 16, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.61', '4.00', '5.00'),
('#{game1.id}', '#{bet_365.id}', '8/13', '3/1', '4/1'),
('#{game1.id}', '#{unibet.id}', '1.60', '3.90', '5.25')
endsql

    team = FootballClub.first(:conditions => {:alias => 'mainz'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 16, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.30', '3.40', '3.00'),
('#{game1.id}', '#{bet_365.id}', '5/4', '12/5', '21/10'),
('#{game1.id}', '#{unibet.id}', '2.15', '3.40', '3.20')
endsql

    team = FootballClub.first(:conditions => {:alias => 'nurnberg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 16, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.40', '3.30', '2.90'),
('#{game1.id}', '#{bet_365.id}', '11/8', '9/4', '2/1'),
('#{game1.id}', '#{unibet.id}', '2.40', '3.25', '2.85')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'keln'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 16, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.20', '3.40', '3.20'),
('#{game1.id}', '#{bet_365.id}', '5/4', '9/4', '11/5'),
('#{game1.id}', '#{unibet.id}', '2.15', '3.30', '3.30')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'augsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 16, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '4.00', '3.40', '1.95'),
('#{game1.id}', '#{bet_365.id}', '3/1', '12/5', '10/11'),
('#{game1.id}', '#{unibet.id}', '3.80', '3.40', '1.95')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hannover'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 16, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.60', '3.30', '2.62'),
('#{game1.id}', '#{bet_365.id}', '17/10', '9/4', '8/5'),
('#{game1.id}', '#{unibet.id}', '2.75', '3.30', '2.45')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'borussiad'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 16, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.25', '6.00', '11.00'),
('#{game1.id}', '#{bet_365.id}', '1/4', '9/2', '11/1'),
('#{game1.id}', '#{unibet.id}', '1.20', '6.00', '14.00')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'stuttgart'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 16, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '5.00', '4.00', '1.61'),
('#{game1.id}', '#{bet_365.id}', '9/2', '3/1', '4/7'),
('#{game1.id}', '#{unibet.id}', '6.00', '4.30', '1.48')
endsql
  end

  def down
  end
end

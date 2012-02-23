class Add23TourBookmakersPredictions < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    team = FootballClub.first(:conditions => {:alias => 'borussiam'})
    will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 23, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.75', '3.50', '4.75'),
('#{game1.id}', '#{unibet.id}', '1.80', '3.45', '4.35'),
('#{game1.id}', '#{bet_365.id}', '8/11', '11/4', '7/2')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'keln'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 23, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '3.75', '3.50', '1.95'),
('#{game1.id}', '#{unibet.id}', '3.85', '3.45', '1.90'),
('#{game1.id}', '#{bet_365.id}', '11/4', '13/5', '10/11')
endsql

    team = FootballClub.first(:conditions => {:alias => 'stuttgart'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 23, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.70', '3.60', '5.00'),
('#{game1.id}', '#{unibet.id}', '1.70', '3.55', '4.90'),
('#{game1.id}', '#{bet_365.id}', '4/6', '11/4', '4/1')
endsql

    team = FootballClub.first(:conditions => {:alias => 'mainz'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 23, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.73', '3.60', '4.75'),
('#{game1.id}', '#{unibet.id}', '1.80', '3.60', '4.25'),
('#{game1.id}', '#{bet_365.id}', '8/11', '13/5', '15/4')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'wolfsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 23, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.25', '3.25', '3.20'),
('#{game1.id}', '#{unibet.id}', '2.15', '3.40', '3.20'),
('#{game1.id}', '#{bet_365.id}', '6/5', '23/10', '9/4')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'augsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 23, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.55', '3.20', '2.75'),
('#{game1.id}', '#{unibet.id}', '2.75', '3.35', '2.45'),
('#{game1.id}', '#{bet_365.id}', '8/5', '9/4', '17/10')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'werder'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 23, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.80', '3.50', '4.50'),
('#{game1.id}', '#{unibet.id}', '1.80', '3.45', '4.35'),
('#{game1.id}', '#{bet_365.id}', '4/5', '5/2', '7/2')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'bayern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 23, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.40', '4.50', '7.50'),
('#{game1.id}', '#{unibet.id}', '1.48', '4.00', '6.75'),
('#{game1.id}', '#{bet_365.id}', '2/5', '7/2', '13/2')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'borussiad'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 23, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.28', '5.00', '11.00'),
('#{game1.id}', '#{unibet.id}', '1.30', '4.55', '12.00'),
('#{game1.id}', '#{bet_365.id}', '1/4', '9/2', '11/1')
endsql
  end

  def down
  end
end

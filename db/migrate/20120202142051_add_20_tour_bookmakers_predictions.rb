class Add20TourBookmakersPredictions < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    team = FootballClub.first(:conditions => {:alias => 'nurnberg'})
    will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '6.00', '3.75', '1.57'),
('#{game1.id}', '#{unibet.id}', '5.85', '3.75', '1.57'),
('#{game1.id}', '#{bet_365.id}', '9/2', '11/4', '8/13')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'gerta'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.25', '3.40', '3.10'),
('#{game1.id}', '#{unibet.id}', '2.50', '3.00', '2.90'),
('#{game1.id}', '#{bet_365.id}', '11/8', '12/5', '15/8')
endsql

    team = FootballClub.first(:conditions => {:alias => 'shalke04'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.67', '3.75', '5.00'),
('#{game1.id}', '#{unibet.id}', '1.62', '3.75', '5.20'),
('#{game1.id}', '#{bet_365.id}', '4/6', '3/1', '15/4')
endsql

    team = FootballClub.first(:conditions => {:alias => 'bayer'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.73', '3.60', '4.80'),
('#{game1.id}', '#{unibet.id}', '1.72', '3.50', '4.80'),
('#{game1.id}', '#{bet_365.id}', '3/4', '11/4', '7/2')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'wolfsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.80', '3.30', '2.50'),
('#{game1.id}', '#{unibet.id}', '2.70', '3.40', '2.45'),
('#{game1.id}', '#{bet_365.id}', '9/5', '23/10', '6/4')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hoffenheim'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.61', '3.75', '5.50'),
('#{game1.id}', '#{unibet.id}', '1.60', '3.60', '5.80'),
('#{game1.id}', '#{bet_365.id}', '4/7', '11/4', '5/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hamburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '5.50', '4.33', '1.53'),
('#{game1.id}', '#{unibet.id}', '5.85', '4.00', '1.53'),
('#{game1.id}', '#{bet_365.id}', '5/1', '3/1', '8/15')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'freiburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '3.20', '3.40', '2.18'),
('#{game1.id}', '#{unibet.id}', '3.10', '3.40', '5.25'),
('#{game1.id}', '#{bet_365.id}', '11/5', '12/5', '6/5')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'kaiserslautern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.83', '3.40', '4.50'),
('#{game1.id}', '#{unibet.id}', '1.75', '3.50', '4.60'),
('#{game1.id}', '#{bet_365.id}', '3/4', '5/2', '15/4')
endsql
  end

  def down
  end
end

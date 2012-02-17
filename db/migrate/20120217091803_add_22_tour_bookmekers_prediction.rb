class Add22TourBookmekersPrediction < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    team = FootballClub.first(:conditions => {:alias => 'hoffenheim'})
    will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 22, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.45', '3.25', '2.90'),
('#{game1.id}', '#{unibet.id}', '2.35', '3.20', '3.00'),
('#{game1.id}', '#{bet_365.id}', '7/5', '23/10', '19/10')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'gerta'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 22, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '7.00', '3.75', '1.53'),
('#{game1.id}', '#{unibet.id}', '7.00', '4.25', '1.45'),
('#{game1.id}', '#{bet_365.id}', '6/1', '3/1', '1/2')
endsql

    team = FootballClub.first(:conditions => {:alias => 'hamburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 22, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.10', '3.30', '3.50'),
('#{game1.id}', '#{unibet.id}', '2.05', '3.40', '3.45'),
('#{game1.id}', '#{bet_365.id}', '1/1', '5/2', '13/5')
endsql

    team = FootballClub.first(:conditions => {:alias => 'nurnberg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 22, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.80', '3.40', '4.80'),
('#{game1.id}', '#{unibet.id}', '1.75', '3.50', '4.60'),
('#{game1.id}', '#{bet_365.id}', '8/11', '5/2', '4/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'kaiserslautern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 22, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '3.20', '3.20', '2.30'),
('#{game1.id}', '#{unibet.id}', '3.25', '3.30', '2.15'),
('#{game1.id}', '#{bet_365.id}', '11/5', '23/10', '5/4')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'bayer'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 22, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.53', '3.75', '7.00'),
('#{game1.id}', '#{unibet.id}', '1.55', '3.85', '6.00'),
('#{game1.id}', '#{bet_365.id}', '1/2', '3/1', '6/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'freiburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 22, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '9.00', '5.00', '1.33'),
('#{game1.id}', '#{unibet.id}', '8.50', '5.00', '1.33'),
('#{game1.id}', '#{bet_365.id}', '8/1', '9/2', '3/10')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'shalke04'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 22, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.70', '3.60', '5.00'),
('#{game1.id}', '#{unibet.id}', '1.65', '3.75', '5.00'),
('#{game1.id}', '#{bet_365.id}', '4/6', '11/4', '4/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hannover'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 22, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.50', '3.20', '2.80'),
('#{game1.id}', '#{unibet.id}', '2.35', '3.20', '3.00'),
('#{game1.id}', '#{bet_365.id}', '6/4', '23/10', '9/5')
endsql
  end

  def down
  end
end

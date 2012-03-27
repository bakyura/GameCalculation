class Add28TourPredictionsBookmakers < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    team = FootballClub.first(:conditions => {:alias => 'borussiad'})
    will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 28, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.30', '5.00', '11.00'),
('#{game1.id}', '#{unibet.id}', '1.25', '5.45', '11.00'),
('#{game1.id}', '#{bet_365.id}', '2/7', '9/2', '9/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'nurnberg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 28, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '9.00', '5.00', '1.33'),
('#{game1.id}', '#{unibet.id}', '8.50', '4.25', '1.40'),
('#{game1.id}', '#{bet_365.id}', '8/1', '4/1', '1/3')
endsql

    team = FootballClub.first(:conditions => {:alias => 'kaiserslautern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 28, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.45', '3.30', '2.80'),
('#{game1.id}', '#{unibet.id}', '2.45', '3.40', '2.70'),
('#{game1.id}', '#{bet_365.id}', '6/4', '23/10', '9/5')
endsql

    team = FootballClub.first(:conditions => {:alias => 'werder'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 28, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.05', '3.40', '3.50'),
('#{game1.id}', '#{unibet.id}', '2.15', '3.40', '3.20'),
('#{game1.id}', '#{bet_365.id}', '11/10', '12/5', '12/5')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'bayer'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 28, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.67', '3.75', '5.00'),
('#{game1.id}', '#{unibet.id}', '1.72', '3.55', '4.75'),
('#{game1.id}', '#{bet_365.id}', '7/10', '14/5', '15/4')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'augsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 28, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.00', '3.50', '3.60'),
('#{game1.id}', '#{unibet.id}', '2.00', '3.40', '3.60'),
('#{game1.id}', '#{bet_365.id}', '1/1', '12/5', '11/4')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'gerta'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 28, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.35', '3.40', '2.87'),
('#{game1.id}', '#{unibet.id}', '2.40', '3.40', '2.75'),
('#{game1.id}', '#{bet_365.id}', '11/8', '12/5', '15/8')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hannover'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 28, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.50', '3.30', '2.75'),
('#{game1.id}', '#{unibet.id}', '2.45', '3.35', '2.75'),
('#{game1.id}', '#{bet_365.id}', '17/10', '9/4', '8/5')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hoffenheim'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 28, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '3.00', '3.30', '2.35'),
('#{game1.id}', '#{unibet.id}', '2.75', '3.40', '2.40'),
('#{game1.id}', '#{bet_365.id}', '2/1', '12/5', '13/10')
endsql
  end

  def down
  end
end

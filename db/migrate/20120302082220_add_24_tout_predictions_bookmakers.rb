class Add24ToutPredictionsBookmakers < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    team = FootballClub.first(:conditions => {:alias => 'bayer'})
    will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 24, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '4.50', '3.40', '1.83'),
('#{game1.id}', '#{unibet.id}', '4.90', '3.55', '1.70'),
('#{game1.id}', '#{bet_365.id}', '7/2', '13/5', '4/5')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'freiburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 24, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '3.75', '3.40', '2.00'),
('#{game1.id}', '#{unibet.id}', '3.35', '3.45', '2.05'),
('#{game1.id}', '#{bet_365.id}', '14/5', '13/5', '10/11')
endsql

    team = FootballClub.first(:conditions => {:alias => 'gerta'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 24, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.50', '3.30', '2.75'),
('#{game1.id}', '#{unibet.id}', '2.50', '3.40', '2.65'),
('#{game1.id}', '#{bet_365.id}', '6/4', '12/5', '17/10')
endsql

    team = FootballClub.first(:conditions => {:alias => 'hamburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 24, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.00', '3.40', '3.75'),
('#{game1.id}', '#{unibet.id}', '2.00', '3.40', '3.55'),
('#{game1.id}', '#{bet_365.id}', '1/1', '5/2', '13/5')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'kaiserslautern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 24, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.30', '3.20', '3.20'),
('#{game1.id}', '#{unibet.id}', '2.20', '3.35', '3.15'),
('#{game1.id}', '#{bet_365.id}', '13/10', '9/4', '21/10')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hannover'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 24, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.73', '3.50', '5.00'),
('#{game1.id}', '#{unibet.id}', '1.67', '3.50', '5.25'),
('#{game1.id}', '#{bet_365.id}', '8/11', '5/2', '4/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'borussiad'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 24, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.30', '5.00', '10.00'),
('#{game1.id}', '#{unibet.id}', '1.30', '5.00', '10.00'),
('#{game1.id}', '#{bet_365.id}', '3/10', '4/1', '10/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'nurnberg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 24, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.80', '3.20', '2.50'),
('#{game1.id}', '#{unibet.id}', '2.65', '3.35', '5.20'),
('#{game1.id}', '#{bet_365.id}', '2/1', '9/4', '11/8')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hoffenheim'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 24, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.61', '3.60', '6.00'),
('#{game1.id}', '#{unibet.id}', '1.60', '3.65', '5.70'),
('#{game1.id}', '#{bet_365.id}', '8/13', '14/5', '9/2')
endsql
  end

  def down
  end
end

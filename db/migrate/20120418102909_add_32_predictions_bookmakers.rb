class Add32PredictionsBookmakers < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
    team = FootballClub.first(:conditions => {:alias => 'mainz'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 32, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.00', '3.75', '3.40'),
('#{game1.id}', '#{unibet.id}', '2.00', '3.40', '3.60'),
('#{game1.id}', '#{bet_365.id}', '19/20', '13/5', '13/5')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hoffenheim'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 32, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.50', '3.30', '2.75'),
('#{game1.id}', '#{unibet.id}', '2.35', '3.40', '2.85'),
('#{game1.id}', '#{bet_365.id}', '11/8', '12/5', '15/8')
endsql

    team = FootballClub.first(:conditions => {:alias => 'werder'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 32, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '3.40', '3.75', '2.00'),
('#{game1.id}', '#{unibet.id}', '3.40', '3.60', '2.00'),
('#{game1.id}', '#{bet_365.id}', '5/2', '13/5', '1/1')
endsql

    team = FootballClub.first(:conditions => {:alias => 'nurnberg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 32, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.25', '3.40', '3.10'),
('#{game1.id}', '#{unibet.id}', '2.10', '3.35', '3.35'),
('#{game1.id}', '#{bet_365.id}', '6/5', '23/10', '9/4')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'gerta'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 32, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.57', '4.00', '5.50'),
('#{game1.id}', '#{unibet.id}', '1.60', '3.70', '5.55'),
('#{game1.id}', '#{bet_365.id}', '4/7', '3/1', '19/4')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'keln'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 32, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '3.60', '3.75', '1.91'),
('#{game1.id}', '#{unibet.id}', '3.85', '3.50', '1.90'),
('#{game1.id}', '#{bet_365.id}', '3/1', '11/4', '5/6')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'borussiad'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 32, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.44', '4.00', '8.00'),
('#{game1.id}', '#{unibet.id}', '1.45', '4.00', '8.00'),
('#{game1.id}', '#{bet_365.id}', '4/9', '16/5', '13/2')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'augsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 32, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '3.20', '3.30', '2.25'),
('#{game1.id}', '#{unibet.id}', '3.10', '3.40', '2.20'),
('#{game1.id}', '#{bet_365.id}', '11/5', '12/5', '6/5')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hannover'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 32, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.80', '3.50', '4.50'),
('#{game1.id}', '#{unibet.id}', '1.80', '3.50', '4.30'),
('#{game1.id}', '#{bet_365.id}', '5/6', '5/2', '16/5') 
endsql
  end

  def down
  end
end

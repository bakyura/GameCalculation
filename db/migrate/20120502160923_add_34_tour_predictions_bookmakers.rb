class Add34TourPredictionsBookmakers < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
    team = FootballClub.first(:conditions => {:alias => 'mainz'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 34, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.40', '3.30', '2.87'),
('#{game1.id}', '#{unibet.id}', '2.30', '4.45', '2.85'),
('#{game1.id}', '#{bet_365.id}', '13/10', '12/5', '2/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'nurnberg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 34, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.55', '3.30', '2.70'),
('#{game1.id}', '#{unibet.id}', '2.50', '3.45', '2.60'),
('#{game1.id}', '#{bet_365.id}', '6/4', '23/10', '9/5')
endsql

    team = FootballClub.first(:conditions => {:alias => 'keln'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 34, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '4.50', '4.00', '1.70'),
('#{game1.id}', '#{unibet.id}', '4.70', '4.00', '1.65'),
('#{game1.id}', '#{bet_365.id}', '15/4', '3/1', '4/6')
endsql

    team = FootballClub.first(:conditions => {:alias => 'werder'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 34, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.55', '3.30', '2.70'),
('#{game1.id}', '#{unibet.id}', '2.50', '3.50', '2.55'),
('#{game1.id}', '#{bet_365.id}', '6/4', '12/5', '17/10')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'augsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 34, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.50', '3.30', '2.75'),
('#{game1.id}', '#{unibet.id}', '2.30', '3.40', '2.90'),
('#{game1.id}', '#{bet_365.id}', '7/5', '23/10', '15/8')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'borussiad'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 34, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.33', '5.00', '8.50'),
('#{game1.id}', '#{unibet.id}', '1.30', '4.65', '11.00'),
('#{game1.id}', '#{bet_365.id}', '3/10', '17/4', '17/2')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hannover'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 34, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.40', '4.50', '7.50'),
('#{game1.id}', '#{unibet.id}', '1.35', '4.65', '8.50'),
('#{game1.id}', '#{bet_365.id}', '1/3', '4/1', '8/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'gerta'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 34, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.91', '3.60', '3.80'),
('#{game1.id}', '#{unibet.id}', '1.95', '3.65', '3.50'),
('#{game1.id}', '#{bet_365.id}', '19/20', '13/5', '13/5')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'stuttgart'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 34, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.91', '4.00', '3.50'),
('#{game1.id}', '#{unibet.id}', '1.95', '3.75', '3.50'),
('#{game1.id}', '#{bet_365.id}', '10/11', '11/4', '13/5') 
endsql
  end

  def down
  end
end

class Add30TourPredictionsBookmakers < ActiveRecord::Migration
  def up
      league = League.first(:conditions => {:country => 'DEU'})
    team = FootballClub.first(:conditions => {:alias => 'gerta'})
    will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 30, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.15', '3.50', '3.25'),
('#{game1.id}', '#{unibet.id}', '2.15', '3.40', '3.10'),
('#{game1.id}', '#{bet_365.id}', '5/4', '12/5', '21/10')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'augsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 30, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.80', '3.20', '2.50'),
('#{game1.id}', '#{unibet.id}', '2.65', '3.40', '2.50'),
('#{game1.id}', '#{bet_365.id}', '9/5', '11/5', '6/4')
endsql

    team = FootballClub.first(:conditions => {:alias => 'mainz'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 30, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.61', '3.80', '5.50'),
('#{game1.id}', '#{unibet.id}', '1.60', '3.65', '5.70'),
('#{game1.id}', '#{bet_365.id}', '8/13', '14/5', '9/2')
endsql

    team = FootballClub.first(:conditions => {:alias => 'werder'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 30, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.62', '3.30', '2.62'),
('#{game1.id}', '#{unibet.id}', '2.40', '3.40', '2.75'),
('#{game1.id}', '#{bet_365.id}', '6/4', '9/4', '9/5')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'borussiad'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 30, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.70', '3.10', '2.70'),
('#{game1.id}', '#{unibet.id}', '2.50', '3.40', '2.65'),
('#{game1.id}', '#{bet_365.id}', '8/5', '12/5', '8/5')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'nurnberg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 30, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.90', '3.40', '2.37'),
('#{game1.id}', '#{unibet.id}', '2.90', '3.40', '2.30'),
('#{game1.id}', '#{bet_365.id}', '2/1', '12/5', '13/10')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hoffenheim'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 30, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.30', '3.10', '3.25'),
('#{game1.id}', '#{unibet.id}', '2.10', '3.40', '3.30'),
('#{game1.id}', '#{bet_365.id}', '11/10', '12/5', '12/5')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'bayer'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 30, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.44', '4.50', '7.00'),
('#{game1.id}', '#{unibet.id}', '1.42', '4.10', '8.00'),
('#{game1.id}', '#{bet_365.id}', '2/5', '7/2', '7/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hannover'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 30, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.20', '3.10', '3.50'),
('#{game1.id}', '#{unibet.id}', '2.10', '3.40', '3.30'),
('#{game1.id}', '#{bet_365.id}', '11/10', '5/2', '23/10')
endsql
  end

  def down
  end
end

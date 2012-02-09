class Add21TourPredictionsBookmakers < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    team = FootballClub.first(:conditions => {:alias => 'wolfsburg'})
    will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 21, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.70', '3.60', '5.00'),
('#{game1.id}', '#{unibet.id}', '1.72', '3.55', '4.75'),
('#{game1.id}', '#{bet_365.id}', '8/11', '11/4', '7/2')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'borussiad'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 21, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.45', '4.20', '7.00'),
('#{game1.id}', '#{unibet.id}', '1.45', '3.95', '7.55'),
('#{game1.id}', '#{bet_365.id}', '4/9', '10/3', '6/1')
endsql

    team = FootballClub.first(:conditions => {:alias => 'mainz'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 21, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.00', '3.00', '3.75'),
('#{game1.id}', '#{unibet.id}', '1.90', '3.45', '3.85'),
('#{game1.id}', '#{bet_365.id}', '10/11', '12/5', '3/1')
endsql

    team = FootballClub.first(:conditions => {:alias => 'bayern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 21, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.17', '7.00', '14.00'),
('#{game1.id}', '#{unibet.id}', '1.152', '6.65', '18.00'),
('#{game1.id}', '#{bet_365.id}', '1/7', '7/1', '14/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'werder'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 21, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.85', '3.40', '4.33'),
('#{game1.id}', '#{unibet.id}', '1.95', '3.40', '3.75'),
('#{game1.id}', '#{bet_365.id}', '5/6', '5/2', '10/3')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'stuttgart'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 21, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.83', '3.40', '4.50'),
('#{game1.id}', '#{unibet.id}', '1.85', '3.45', '4.10'),
('#{game1.id}', '#{bet_365.id}', '4/5', '5/2', '7/2')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'borussiam'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 21, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.37', '3.20', '3.00'),
('#{game1.id}', '#{unibet.id}', '2.40', '3.30', '2.85'),
('#{game1.id}', '#{bet_365.id}', '11/8', '12/5', '15/8')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'augsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 21, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.62', '3.10', '2.75'),
('#{game1.id}', '#{unibet.id}', '2.60', '3.35', '2.55'),
('#{game1.id}', '#{bet_365.id}', '8/5', '11/5', '17/10')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'keln'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 21, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '3.00', '3.40', '2.30'),
('#{game1.id}', '#{unibet.id}', '2.85', '3.45', '2.30'),
('#{game1.id}', '#{bet_365.id}', '21/10', '12/5', '5/4')
endsql
  end

  def down
  end
end

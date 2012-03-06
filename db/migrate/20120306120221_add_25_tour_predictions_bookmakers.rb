class Add25TourPredictionsBookmakers < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    team = FootballClub.first(:conditions => {:alias => 'stuttgart'})
    will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 25, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.70', '3.60', '5.00'),
('#{game1.id}', '#{unibet.id}', '1.75', '3.55', '4.50'),
('#{game1.id}', '#{bet_365.id}', '8/11', '13/5', '15/4')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'wolfsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 25, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.87', '3.30', '2.40'),
('#{game1.id}', '#{unibet.id}', '2.90', '3.40', '2.30'),
('#{game1.id}', '#{bet_365.id}', '2/1', '12/5', '13/10')
endsql

    team = FootballClub.first(:conditions => {:alias => 'mainz'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 25, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.91', '3.40', '4.00'),
('#{game1.id}', '#{unibet.id}', '1.85', '3.45', '4.10'),
('#{game1.id}', '#{bet_365.id}', '10/11', '12/5', '3/1')
endsql

    team = FootballClub.first(:conditions => {:alias => 'borussiam'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 25, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.44', '4.33', '7.00'),
('#{game1.id}', '#{unibet.id}', '1.52', '3.85', '6.35'),
('#{game1.id}', '#{bet_365.id}', '1/2', '3/1', '11/2')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'bayern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 25, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.25', '5.50', '12.00'),
('#{game1.id}', '#{unibet.id}', '1.22', '5.65', '12.00'),
('#{game1.id}', '#{bet_365.id}', '1/4', '19/4', '10/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'keln'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 25, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.25', '3.40', '3.10'),
('#{game1.id}', '#{unibet.id}', '2.35', '3.35', '2.85'),
('#{game1.id}', '#{bet_365.id}', '13/10', '12/5', '2/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'augsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 25, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '8.00', '4.50', '1.40'),
('#{game1.id}', '#{unibet.id}', '7.85', '4.10', '1.42'),
('#{game1.id}', '#{bet_365.id}', '15/2', '15/4', '4/11')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'werder'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 25, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.95', '3.50', '3.80'),
('#{game1.id}', '#{unibet.id}', '2.05', '3.40', '3.45'),
('#{game1.id}', '#{bet_365.id}', '10/11', '12/5', '3/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'shalke04'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 25, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.70', '3.60', '5.00'),
('#{game1.id}', '#{unibet.id}', '1.85', '3.50', '4.10'),
('#{game1.id}', '#{bet_365.id}', '8/11', '5/2', '4/1')
endsql
  end

  def down
  end
end

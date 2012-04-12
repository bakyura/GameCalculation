class Add31TourPredictionsBookmakers < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
    team = FootballClub.first(:conditions => {:alias => 'stuttgart'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 31, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.91', '3.60', '3.80'),
('#{game1.id}', '#{unibet.id}', '1.85', '3.55', '4.00'),
('#{game1.id}', '#{bet_365.id}', '5/6', '13/5', '16/5')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'shalke04'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 31, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '3.10', '3.50', '2.20'),
('#{game1.id}', '#{unibet.id}', '3.25', '3.45', '2.10'),
('#{game1.id}', '#{bet_365.id}', '23/10', '5/2', '11/10')
endsql

    team = FootballClub.first(:conditions => {:alias => 'hamburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 31, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.35', '3.40', '2.90'),
('#{game1.id}', '#{unibet.id}', '2.35', '3.40', '2.85'),
('#{game1.id}', '#{bet_365.id}', '13/10', '12/5', '2/1')
endsql

    team = FootballClub.first(:conditions => {:alias => 'kaiserslautern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 31, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.90', '3.25', '2.45'),
('#{game1.id}', '#{unibet.id}', '2.70', '3.40', '2.45'),
('#{game1.id}', '#{bet_365.id}', '9/5', '12/5', '7/5')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'wolfsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 31, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.73', '3.75', '4.50'),
('#{game1.id}', '#{unibet.id}', '1.72', '3.55', '4.80'),
('#{game1.id}', '#{bet_365.id}', '8/11', '13/5', '15/4')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'bayer'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 31, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.53', '4.00', '6.00'),
('#{game1.id}', '#{unibet.id}', '1.57', '3.80', '5.75'),
('#{game1.id}', '#{bet_365.id}', '8/15', '3/1', '5/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'bayern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 31, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.22', '6.00', '12.00'),
('#{game1.id}', '#{unibet.id}', '1.28', '5.10', '10.50'),
('#{game1.id}', '#{bet_365.id}', '2/7', '4/1', '10/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'borussiam'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 31, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.53', '4.00', '6.00'),
('#{game1.id}', '#{unibet.id}', '1.50', '3.90', '6.50'),
('#{game1.id}', '#{bet_365.id}', '4/9', '10/3', '6/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'freiburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 31, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.35', '3.30', '3.00'),
('#{game1.id}', '#{unibet.id}', '2.35', '3.40', '2.85'),
('#{game1.id}', '#{bet_365.id}', '6/5', '12/5', '11/5')
endsql
  end

  def down
  end
end

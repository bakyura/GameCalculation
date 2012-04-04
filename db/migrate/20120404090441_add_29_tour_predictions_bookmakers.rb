class Add29TourPredictionsBookmakers < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    team = FootballClub.first(:conditions => {:alias => 'wolfsburg'})
    will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 29, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '6.00', '4.00', '1.53'),
('#{game1.id}', '#{unibet.id}', '6.25', '4.00', '1.53'),
('#{game1.id}', '#{bet_365.id}', '5/1', '3/1', '8/15')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'keln'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 29, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.90', '3.30', '2.40'),
('#{game1.id}', '#{unibet.id}', '2.70', '3.40', '2.45'),
('#{game1.id}', '#{bet_365.id}', '15/8', '23/10', '7/5')
endsql

    team = FootballClub.first(:conditions => {:alias => 'stuttgart'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 29, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.00', '3.40', '3.75'),
('#{game1.id}', '#{unibet.id}', '2.00', '3.40', '3.55'),
('#{game1.id}', '#{bet_365.id}', '1/1', '12/5', '11/4')
endsql

    team = FootballClub.first(:conditions => {:alias => 'freiburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 29, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.05', '3.40', '3.50'),
('#{game1.id}', '#{unibet.id}', '2.15', '3.40', '3.20'),
('#{game1.id}', '#{bet_365.id}', '11/10', '12/5', '12/5')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'kaiserslautern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 29, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.62', '3.30', '2.60'),
('#{game1.id}', '#{unibet.id}', '2.70', '3.40', '2.45'),
('#{game1.id}', '#{bet_365.id}', '17/10', '9/5', '8/5')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'bayern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 29, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.14', '8.00', '17.00'),
('#{game1.id}', '#{unibet.id}', '1.13', '7.00', '20.00'),
('#{game1.id}', '#{bet_365.id}', '1/8', '7/1', '20/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'borussiam'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 29, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.57', '3.75', '6.00'),
('#{game1.id}', '#{unibet.id}', '1.65', '3.65', '5.20'),
('#{game1.id}', '#{bet_365.id}', '4/7', '11/4', '5/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'shalke04'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 29, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.67', '3.75', '5.00'),
('#{game1.id}', '#{unibet.id}', '1.75', '3.55', '4.55'),
('#{game1.id}', '#{bet_365.id}', '4/6', '11/4', '4/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hamburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 29, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.50', '3.40', '2.70'),
('#{game1.id}', '#{unibet.id}', '2.50', '3.40', '2.65'),
('#{game1.id}', '#{bet_365.id}', '7/4', '23/10', '6/4')
endsql
  end

  def down
  end
end

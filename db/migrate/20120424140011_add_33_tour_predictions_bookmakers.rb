class Add33TourPredictionsBookmakers < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
    team = FootballClub.first(:conditions => {:alias => 'kaiserslautern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 33, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '6.50', '4.10', '1.50'),
('#{game1.id}', '#{unibet.id}', '7.45', '4.00', '1.45'),
('#{game1.id}', '#{bet_365.id}', '6/1', '3/1', '1/2')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'wolfsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 33, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.10', '3.40', '3.40'),
('#{game1.id}', '#{unibet.id}', '2.10', '3.40', '3.30'),
('#{game1.id}', '#{bet_365.id}', '11/10', '5/2', '23/10')
endsql

    team = FootballClub.first(:conditions => {:alias => 'bayer'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 33, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.85', '3.50', '4.20'),
('#{game1.id}', '#{unibet.id}', '1.85', '3.55', '3.95'),
('#{game1.id}', '#{bet_365.id}', '10/11', '5/2', '3/1')
endsql

    team = FootballClub.first(:conditions => {:alias => 'hamburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 33, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.10', '3.40', '3.40'),
('#{game1.id}', '#{unibet.id}', '2.10', '3.40', '3.30'),
('#{game1.id}', '#{bet_365.id}', '11/10', '12/5', '12/5')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hoffenheim'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 33, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.85', '3.60', '4.00'),
('#{game1.id}', '#{unibet.id}', '1.95', '3.40', '3.70'),
('#{game1.id}', '#{bet_365.id}', '10/11', '5/2', '3/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'bayern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 33, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.67', '4.20', '4.50'),
('#{game1.id}', '#{unibet.id}', '1.60', '4.00', '5.00'),
('#{game1.id}', '#{bet_365.id}', '7/10', '11/4', '15/4')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'freiburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 33, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.25', '3.50', '3.00'),
('#{game1.id}', '#{unibet.id}', '2.20', '3.30', '3.20'),
('#{game1.id}', '#{bet_365.id}', '5/4', '5/2', '2/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'borussiam'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 33, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.75', '3.75', '4.50'),
('#{game1.id}', '#{unibet.id}', '1.72', '3.45', '4.95'),
('#{game1.id}', '#{bet_365.id}', '8/11', '11/4', '7/2')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'shalke04'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 33, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.50', '4.40', '6.00'),
('#{game1.id}', '#{unibet.id}', '1.48', '4.25', '6.15'),
('#{game1.id}', '#{bet_365.id}', '4/9', '10/3', '6/1') 
endsql
  end

  def down
  end
end

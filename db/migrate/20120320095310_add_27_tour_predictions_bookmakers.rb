class Add27TourPredictionsBookmakers < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    team = FootballClub.first(:conditions => {:alias => 'wolfsburg'})
    will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 27, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.05', '3.40', '3.50'),
('#{game1.id}', '#{unibet.id}', '2.05', '3.40', '3.40'),
('#{game1.id}', '#{bet_365.id}', '21/20', '5/2', '12/5')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'bayern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 27, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.17', '6.50', '17.00'),
('#{game1.id}', '#{unibet.id}', '1.20', '6.00', '13.00'),
('#{game1.id}', '#{bet_365.id}', '1/6', '6/1', '14/1')
endsql

    team = FootballClub.first(:conditions => {:alias => 'freiburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 27, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.00', '3.30', '3.80'),
('#{game1.id}', '#{unibet.id}', '2.05', '3.35', '3.50'),
('#{game1.id}', '#{bet_365.id}', '1/1', '12/5', '11/4')
endsql

    team = FootballClub.first(:conditions => {:alias => 'borussiam'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 27, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.65', '3.60', '5.50'),
('#{game1.id}', '#{unibet.id}', '1.75', '3.50', '4.65'),
('#{game1.id}', '#{bet_365.id}', '8/13', '11/4', '9/2')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'werder'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 27, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.67', '3.75', '5.00'),
('#{game1.id}', '#{unibet.id}', '1.75', '3.45', '4.65'),
('#{game1.id}', '#{bet_365.id}', '5/6', '5/2', '10/3')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'mainz'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 27, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.70', '3.60', '5.00'),
('#{game1.id}', '#{unibet.id}', '1.72', '3.45', '4.85'),
('#{game1.id}', '#{bet_365.id}', '8/11', '5/2', '4/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'shalke04'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 27, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.00', '3.50', '3.60'),
('#{game1.id}', '#{unibet.id}', '1.90', '3.45', '3.90'),
('#{game1.id}', '#{bet_365.id}', '10/11', '13/5', '11/4')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'stuttgart'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 27, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.80', '3.50', '4.50'),
('#{game1.id}', '#{unibet.id}', '1.90', '3.45', '3.90'),
('#{game1.id}', '#{bet_365.id}', '5/6', '5/2', '10/3')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'keln'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 27, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '8.00', '4.50', '1.40'),
('#{game1.id}', '#{unibet.id}', '7.75', '4.15', '1.42'),
('#{game1.id}', '#{bet_365.id}', '7/1', '7/2', '2/5')
endsql
  end

  def down
  end
end

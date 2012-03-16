class Add26TourPredictionsBookmakers < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    team = FootballClub.first(:conditions => {:alias => 'hoffenheim'})
    will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 26, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.30', '3.40', '3.00'),
('#{game1.id}', '#{unibet.id}', '2.30', '3.40', '2.90'),
('#{game1.id}', '#{bet_365.id}', '13/10', '12/5', '2/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'borussiad'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 26, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.36', '4.50', '9.00'),
('#{game1.id}', '#{unibet.id}', '1.35', '4.50', '9.00'),
('#{game1.id}', '#{bet_365.id}', '1/3', '4/1', '8/1')
endsql

    team = FootballClub.first(:conditions => {:alias => 'augsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 26, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.75', '3.30', '2.50'),
('#{game1.id}', '#{unibet.id}', '2.95', '3.35', '2.30'),
('#{game1.id}', '#{bet_365.id}', '19/10', '21/10', '7/5')
endsql

    team = FootballClub.first(:conditions => {:alias => 'hamburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 26, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.80', '3.50', '4.50'),
('#{game1.id}', '#{unibet.id}', '1.75', '3.50', '4.60'),
('#{game1.id}', '#{bet_365.id}', '5/6', '11/4', '3/1')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'nurnberg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 26, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.05', '3.40', '3.60'),
('#{game1.id}', '#{unibet.id}', '2.05', '3.45', '3.40'),
('#{game1.id}', '#{bet_365.id}', '1/1', '12/5', '11/4')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'bayer'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 26, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.15', '3.30', '3.50'),
('#{game1.id}', '#{unibet.id}', '2.05', '3.40', '3.30'),
('#{game1.id}', '#{bet_365.id}', '11/10', '12/5', '12/5')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'gerta'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 26, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '8.00', '4.50', '1.40'),
('#{game1.id}', '#{unibet.id}', '8.50', '4.35', '1.38'),
('#{game1.id}', '#{bet_365.id}', '8/1', '4/1', '1/3')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'kaiserslautern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 26, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '3.60', '3.40', '2.05'),
('#{game1.id}', '#{unibet.id}', '3.20', '3.40', '2.15'),
('#{game1.id}', '#{bet_365.id}', '5/2', '23/10', '11/10')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hannover'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 26, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.57', '3.75', '6.00'),
('#{game1.id}', '#{unibet.id}', '1.57', '3.75', '5.90'),
('#{game1.id}', '#{bet_365.id}', '8/13', '14/5', '9/2')
endsql
  end

  def down
  end
end

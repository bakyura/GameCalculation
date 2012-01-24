class Add19TourBookmakersPredictions < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
    team = FootballClub.first(:conditions => {:alias => 'hannover'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 19, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.15', '3.30', '3.40'),
('#{game1.id}', '#{bet_365.id}', '11/10', '12/5', '12/5'),
('#{game1.id}', '#{unibet.id}', '2.15', '3.35', '3.25')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'bayern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 19, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.20', '6.50', '13.00'),
('#{game1.id}', '#{bet_365.id}', '1/5', '5/1', '15/1'),
('#{game1.id}', '#{unibet.id}', '1.18', '6.00', '16.50')
endsql

    team = FootballClub.first(:conditions => {:alias => 'gerta'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 19, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.25', '3.40', '3.10'),
('#{game1.id}', '#{bet_365.id}', '13/10', '23/10', '21/10'),
('#{game1.id}', '#{unibet.id}', '2.35', '3.40', '2.80')
endsql

    team = FootballClub.first(:conditions => {:alias => 'borussiad'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 19, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.33', '4.80', '9.50'),
('#{game1.id}', '#{bet_365.id}', '1/3', '4/1', '8/1'),
('#{game1.id}', '#{unibet.id}', '1.35', '4.45', '9.25')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'augsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 19, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.30', '3.40', '3.00'),
('#{game1.id}', '#{bet_365.id}', '6/4', '11/5', '15/8'),
('#{game1.id}', '#{unibet.id}', '2.55', '3.30', '2.65')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'werder'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 19, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.20', '3.10', '3.50'),
('#{game1.id}', '#{bet_365.id}', '5/4', '12/5', '21/10'),
('#{game1.id}', '#{unibet.id}', '2.30', '3.45', '2.85')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'keln'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 19, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '3.60', '3.60', '1.95'),
('#{game1.id}', '#{bet_365.id}', '3/1', '5/2', '10/11'),
('#{game1.id}', '#{unibet.id}', '3.80', '3.50', '1.90')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'mainz'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 19, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '1.75', '3.60', '4.80'),
('#{game1.id}', '#{bet_365.id}', '4/6', '14/5', '4/1'),
('#{game1.id}', '#{unibet.id}', '1.75', '3.55', '4.50')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'stuttgart'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 19, :home_team => team.id})
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{will_hill.id}', '2.50', '3.30', '2.75'),
('#{game1.id}', '#{bet_365.id}', '6/4', '9/4', '9/5'),
('#{game1.id}', '#{unibet.id}', '2.50', '3.30', '2.70')
endsql
  end

  def down
  end
end

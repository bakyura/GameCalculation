class Update18TourPredictions < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    team = FootballClub.first(:conditions => {:alias => 'bayer'})
    will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 18, :home_team => team.id})

    prediction = BettingPrediction.first(:conditions => {:game_id => game1.id, :bookmaker_id => will_hill.id})
    prediction.update_attributes(:r_1 => '1.75', :r_x => '3.75', :r_2 => '4.50')
    prediction.save!
    
    prediction = BettingPrediction.first(:conditions => {:game_id => game1.id, :bookmaker_id => bet_365.id})
    prediction.update_attributes(:r_1 => '4/5', :r_x => '5/2', :r_2 => '7/2')
    prediction.save!

    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{unibet.id}', '1.80', '3.45', '4.35')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'shalke04'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 18, :home_team => team.id})

    prediction = BettingPrediction.first(:conditions => {:game_id => game1.id, :bookmaker_id => will_hill.id})
    prediction.update_attributes(:r_1 => '1.83', :r_x => '3.60', :r_2 => '4.20')
    prediction.save!
    
    prediction = BettingPrediction.first(:conditions => {:game_id => game1.id, :bookmaker_id => bet_365.id})
    prediction.update_attributes(:r_1 => '4/5', :r_x => '13/5', :r_2 => '10/3')
    prediction.save!
    
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{unibet.id}', '1.80', '3.55', '4.20')
endsql

    team = FootballClub.first(:conditions => {:alias => 'hamburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 18, :home_team => team.id})
    
    prediction = BettingPrediction.first(:conditions => {:game_id => game1.id, :bookmaker_id => will_hill.id})
    prediction.update_attributes(:r_1 => '4.50', :r_x => '3.75', :r_2 => '1.75')
    prediction.save!
    
    prediction = BettingPrediction.first(:conditions => {:game_id => game1.id, :bookmaker_id => bet_365.id})
    prediction.update_attributes(:r_1 => '10/3', :r_x => '5/2', :r_2 => '5/6')
    prediction.save!

    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{unibet.id}', '4.35', '3.45', '1.80')
endsql

    team = FootballClub.first(:conditions => {:alias => 'nurnberg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 18, :home_team => team.id})
    
    prediction = BettingPrediction.first(:conditions => {:game_id => game1.id, :bookmaker_id => will_hill.id})
    prediction.update_attributes(:r_1 => '2.15', :r_x => '3.40', :r_2 => '3.30')
    prediction.save!
    
    prediction = BettingPrediction.first(:conditions => {:game_id => game1.id, :bookmaker_id => bet_365.id})
    prediction.update_attributes(:r_1 => '23/20', :r_x => '23/10', :r_2 => '12/5')
    prediction.save!
    
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{unibet.id}', '2.25', '3.35', '3.00')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'freiburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 18, :home_team => team.id})
    
    prediction = BettingPrediction.first(:conditions => {:game_id => game1.id, :bookmaker_id => will_hill.id})
    prediction.update_attributes(:r_1 => '1.95', :r_x => '3.60', :r_2 => '3.75')
    prediction.save!
    
    prediction = BettingPrediction.first(:conditions => {:game_id => game1.id, :bookmaker_id => bet_365.id})
    prediction.update_attributes(:r_1 => '21/20', :r_x => '12/5', :r_2 => '13/5')
    prediction.save!
    
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{unibet.id}', '2.05', '3.30', '3.55')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'kaiserslautern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 18, :home_team => team.id})
    
    prediction = BettingPrediction.first(:conditions => {:game_id => game1.id, :bookmaker_id => will_hill.id})
    prediction.update_attributes(:r_1 => '2.80', :r_x => '3.50', :r_2 => '2.40')
    prediction.save!
    
    prediction = BettingPrediction.first(:conditions => {:game_id => game1.id, :bookmaker_id => bet_365.id})
    prediction.update_attributes(:r_1 => '9/5', :r_x => '12/5', :r_2 => '7/5')
    prediction.save!
    
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{unibet.id}', '2.70', '3.40', '2.45')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'wolfsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 18, :home_team => team.id})
    
    prediction = BettingPrediction.first(:conditions => {:game_id => game1.id, :bookmaker_id => will_hill.id})
    prediction.update_attributes(:r_1 => '1.85', :r_x => '3.75', :r_2 => '4.00')
    prediction.save!
    
    prediction = BettingPrediction.first(:conditions => {:game_id => game1.id, :bookmaker_id => bet_365.id})
    prediction.update_attributes(:r_1 => '5/6', :r_x => '11/4', :r_2 => '3/1')
    prediction.save!
    
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{unibet.id}', '1.80', '3.50', '4.30')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'borussiam'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 18, :home_team => team.id})
    
    prediction = BettingPrediction.first(:conditions => {:game_id => game1.id, :bookmaker_id => will_hill.id})
    prediction.update_attributes(:r_1 => '4.80', :r_x => '4.00', :r_2 => '1.67')
    prediction.save!
    
    prediction = BettingPrediction.first(:conditions => {:game_id => game1.id, :bookmaker_id => bet_365.id})
    prediction.update_attributes(:r_1 => '9/2', :r_x => '14/5', :r_2 => '8/13')
    prediction.save!
    
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{unibet.id}', '5.50', '3.75', '1.60')
endsql
    
    team = FootballClub.first(:conditions => {:alias => 'hoffenheim'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 18, :home_team => team.id})
    
    prediction = BettingPrediction.first(:conditions => {:game_id => game1.id, :bookmaker_id => will_hill.id})
    prediction.update_attributes(:r_1 => '2.05', :r_x => '3.40', :r_2 => '3.60')
    prediction.save!
    
    prediction = BettingPrediction.first(:conditions => {:game_id => game1.id, :bookmaker_id => bet_365.id})
    prediction.update_attributes(:r_1 => '1/1', :r_x => '5/2', :r_2 => '13/5')
    prediction.save!
    
    execute <<-endsql
INSERT INTO betting_predictions (`game_id`, `bookmaker_id`, `r_1`, `r_x`,`r_2`) VALUES
('#{game1.id}', '#{unibet.id}', '2.00', '3.35', '3.60')
endsql
  end

  def down
  end
end

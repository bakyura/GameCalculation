class Add20TourResults < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    team = FootballClub.first(:conditions => {:alias => 'nurnberg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    game1.update_attributes(:home_goals => 0, :quest_goals => 2)
    game1.save!
    
    
    team = FootballClub.first(:conditions => {:alias => 'gerta'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    game1.update_attributes(:home_goals => 0, :quest_goals => 1)
    game1.save!
    	
    team = FootballClub.first(:conditions => {:alias => 'shalke04'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    game1.update_attributes(:home_goals => 1, :quest_goals => 1)
    game1.save!
    	
    team = FootballClub.first(:conditions => {:alias => 'bayer'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    game1.update_attributes(:home_goals => 2, :quest_goals => 2)
    game1.save!
    
    team = FootballClub.first(:conditions => {:alias => 'wolfsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    game1.update_attributes(:home_goals => 0, :quest_goals => 0)
    game1.save!
    
    team = FootballClub.first(:conditions => {:alias => 'hoffenheim'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    game1.update_attributes(:home_goals => 2, :quest_goals => 2)
    game1.save!
    
    team = FootballClub.first(:conditions => {:alias => 'hamburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    game1.update_attributes(:home_goals => 1, :quest_goals => 1)
    game1.save!
    
    team = FootballClub.first(:conditions => {:alias => 'freiburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    game1.update_attributes(:home_goals => 2, :quest_goals => 2)
    game1.save!
    
    team = FootballClub.first(:conditions => {:alias => 'kaiserslautern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 20, :home_team => team.id})
    game1.update_attributes(:home_goals => 0, :quest_goals => 1)
    game1.save! 
  end

  def down
  end
end

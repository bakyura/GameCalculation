class Add26TourResults < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    team = FootballClub.first(:conditions => {:alias => 'hoffenheim'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 26, :home_team => team.id})
    game1.update_attributes(:home_goals => 1, :quest_goals => 2)
    game1.save!
    
    team = FootballClub.first(:conditions => {:alias => 'borussiad'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 26, :home_team => team.id})
    game1.update_attributes(:home_goals => 1, :quest_goals => 0)
    game1.save!
    	
    team = FootballClub.first(:conditions => {:alias => 'augsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 26, :home_team => team.id})
    game1.update_attributes(:home_goals => 2, :quest_goals => 1)
    game1.save!
    	
    team = FootballClub.first(:conditions => {:alias => 'hamburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 26, :home_team => team.id})
    game1.update_attributes(:home_goals => 1, :quest_goals => 3)
    game1.save!
    
    team = FootballClub.first(:conditions => {:alias => 'nurnberg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 26, :home_team => team.id})
    game1.update_attributes(:home_goals => 1, :quest_goals => 3)
    game1.save!
    
    team = FootballClub.first(:conditions => {:alias => 'bayer'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 26, :home_team => team.id})
    game1.update_attributes(:home_goals => 1, :quest_goals => 2)
    game1.save!
    
    team = FootballClub.first(:conditions => {:alias => 'gerta'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 26, :home_team => team.id})
    game1.update_attributes(:home_goals => 0, :quest_goals => 6)
    game1.save!
    
    team = FootballClub.first(:conditions => {:alias => 'kaiserslautern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 26, :home_team => team.id})
    game1.update_attributes(:home_goals => 1, :quest_goals => 4)
    game1.save!
    
    team = FootballClub.first(:conditions => {:alias => 'hannover'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 26, :home_team => team.id})
    game1.update_attributes(:home_goals => 4, :quest_goals => 1)
    game1.save!     
  end

  def down
  end
end

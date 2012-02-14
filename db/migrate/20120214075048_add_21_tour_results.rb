class Add21TourResults < ActiveRecord::Migration
  def up
    league = League.first(:conditions => {:country => 'DEU'})
    team = FootballClub.first(:conditions => {:alias => 'wolfsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 21, :home_team => team.id})
    game1.update_attributes(:home_goals => 3, :quest_goals => 2)
    game1.save!
    
    
    team = FootballClub.first(:conditions => {:alias => 'borussiad'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 21, :home_team => team.id})
    game1.update_attributes(:home_goals => 1, :quest_goals => 0)
    game1.save!
    	
    team = FootballClub.first(:conditions => {:alias => 'mainz'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 21, :home_team => team.id})
    game1.update_attributes(:home_goals => 1, :quest_goals => 1)
    game1.save!
    	
    team = FootballClub.first(:conditions => {:alias => 'bayern'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 21, :home_team => team.id})
    game1.update_attributes(:home_goals => 2, :quest_goals => 0)
    game1.save!
    
    team = FootballClub.first(:conditions => {:alias => 'werder'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 21, :home_team => team.id})
    game1.update_attributes(:home_goals => 1, :quest_goals => 1)
    game1.save!
    
    team = FootballClub.first(:conditions => {:alias => 'stuttgart'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 21, :home_team => team.id})
    game1.update_attributes(:home_goals => 5, :quest_goals => 0)
    game1.save!
    
    team = FootballClub.first(:conditions => {:alias => 'borussiam'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 21, :home_team => team.id})
    game1.update_attributes(:home_goals => 3, :quest_goals => 0)
    game1.save!
    
    team = FootballClub.first(:conditions => {:alias => 'augsburg'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 21, :home_team => team.id})
    game1.update_attributes(:home_goals => 0, :quest_goals => 0)
    game1.save!
    
    team = FootballClub.first(:conditions => {:alias => 'keln'})
    game1 = FootballMatch.first(:conditions => {:league => league.id, :tour => 21, :home_team => team.id})
    game1.update_attributes(:home_goals => 0, :quest_goals => 1)
    game1.save!  
  end

  def down
  end
end

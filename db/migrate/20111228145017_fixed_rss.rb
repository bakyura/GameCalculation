class FixedRss < ActiveRecord::Migration
  def up
    team1 = FootballClub.first(:conditions => {:alias => 'wolfsburg'})
    team2 = FootballClub.first(:conditions => {:alias => 'hoffenheim'})
    
    social1 = SocialCommunication.first(:conditions => {:club_id => team1.id})
    social2 = SocialCommunication.first(:conditions => {:club_id => team2.id})
    
    social1.update_attributes(:rss => nil)
    social1.save! 

    social2.update_attributes(:rss => nil)
    social2.save! 
  end

  def down
  end
end

class UpdateGertaRssSource < ActiveRecord::Migration
  def up
  team = FootballClub.first(:conditions => {:alias => 'gerta'})
  source = SocialCommunication.first(:conditions => {:club_id => team.id})
  source.update_attributes(:rss => 'http://www.herthabsc.de/index.php?id=1809&type=100')
  source.save!
  end

  def down
  end
end

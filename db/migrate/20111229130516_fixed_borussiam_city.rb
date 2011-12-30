class FixedBorussiamCity < ActiveRecord::Migration
  def up
    team = FootballClub.first(:conditions => {:alias => 'borussiam'})
    team.update_attributes(:location => 'Moenchengladbach')
    team.save!
  end

  def down
  end
end

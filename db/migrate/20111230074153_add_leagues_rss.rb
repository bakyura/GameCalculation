class AddLeaguesRss < ActiveRecord::Migration
  def up
    create_table :leagues_social_communications do |t|
      t.integer :league_id
      t.string :rss
      t.string :facebook
      t.string :twitter
      t.string :youtube
      t.string :google_plus
 
      t.timestamps
    end
  end

  def down
    drop_table :leagues_social_communications
  end
end

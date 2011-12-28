class AddSocialComunications < ActiveRecord::Migration
  def up
    create_table :social_communications do |t|
      t.integer :club_id
      t.string :rss
      t.string :facebook
      t.string :twitter
 
      t.timestamps
    end
  end

  def down
    drop_table :social_communications
  end
end

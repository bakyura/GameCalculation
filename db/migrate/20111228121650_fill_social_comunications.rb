class FillSocialComunications < ActiveRecord::Migration
  def up
    add_column :social_communications, :youtube, :string
    add_column :social_communications, :google_plus, :string
  
    team1 = FootballClub.first(:conditions => {:alias => 'bayer'})
    team2 = FootballClub.first(:conditions => {:alias => 'bayern'})
    team3 = FootballClub.first(:conditions => {:alias => 'freiburg'})
    team4 = FootballClub.first(:conditions => {:alias => 'kaiserslautern'})
    team5 = FootballClub.first(:conditions => {:alias => 'wolfsburg'})
    team6 = FootballClub.first(:conditions => {:alias => 'borussiam'})
    team7 = FootballClub.first(:conditions => {:alias => 'stuttgart'})
    team8 = FootballClub.first(:conditions => {:alias => 'hamburg'})
    team9 = FootballClub.first(:conditions => {:alias => 'shalke04'})
    team10 = FootballClub.first(:conditions => {:alias => 'gerta'})
    team11 = FootballClub.first(:conditions => {:alias => 'werder'})
    team12 = FootballClub.first(:conditions => {:alias => 'mainz'})
    team13 = FootballClub.first(:conditions => {:alias => 'nurnberg'})
    team14 = FootballClub.first(:conditions => {:alias => 'keln'})
    team15 = FootballClub.first(:conditions => {:alias => 'augsburg'})
    team16 = FootballClub.first(:conditions => {:alias => 'hannover'})
    team17 = FootballClub.first(:conditions => {:alias => 'borussiad'})
    team18 = FootballClub.first(:conditions => {:alias => 'hoffenheim'})
    execute <<-endsql
      INSERT INTO social_communications (`club_id`, `rss`, `facebook`, `twitter`, `youtube`, `google_plus`) VALUES
        ("#{team1.id}", 'http://www.bayer04.de/B04-ENG/en/_rssfeeder.aspx', 'http://www.facebook.com/bayer04fussball', 'http://twitter.com/bayer04fussball', NULL, NULL),
        ("#{team2.id}", NULL, NULL, NULL, NULL, NULL),
        ("#{team3.id}", NULL, 'http://www.facebook.com/SCFreiburg', 'http://twitter.com/sc_freiburg', NULL, NULL),
        ("#{team4.id}", 'http://www.fck.de/de/aktuell/rss-feeds/alle-news/rss.xml', 'http://www.facebook.com/1FCKaiserslautern', 'http://twitter.com/rote_teufel', 'http://www.youtube.com/user/RoteTeufel1900', NULL),
        ("#{team5.id}", 'https://www.vfl-wolfsburg.de/en/rss.xml', 'http://www.facebook.com/vflwolfsburgfussball', 'http://twitter.com/#!/VfL_Wolfsburg', NULL, NULL),
        ("#{team6.id}", NULL, 'http://www.facebook.com/borussia.mg', 'http://twitter.com/vflborussia', 'http://www.youtube.com/user/borussiatv', NULL),
        ("#{team7.id}", 'http://www.vfb.de/cache/EN/rss/rss.xml', 'http://www.facebook.com/VfB', 'http://twitter.com/vfb', NULL, 'https://plus.google.com/109500642279661156518/posts'),
        ("#{team8.id}", 'http://www.hsv.de/weiteres/rss/', 'http://www.facebook.com/HSV', 'http://twitter.com/hsv', 'http://www.youtube.com/hamburgersv', 'https://plus.google.com/111658636715897731014/posts'),
        ("#{team9.id}", NULL, 'http://www.facebook.com/S04', 'http://twitter.com/S04', NULL, NULL),
        ("#{team10.id}", 'http://www.herthabsc.de/index.php?id=2077&type=100', 'http://www.facebook.com/herthabsc', 'http://twitter.com/bsc1892', 'http://www.youtube.com/user/herthatv', NULL),
        ("#{team11.id}", 'http://www.werder.de/NewsRSS.xml', 'http://www.facebook.com/WerderBremen', 'http://twitter.com/werderbremen', NULL, 'https://plus.google.com/u/0/117371077766099003383/posts'),
        ("#{team12.id}", NULL, NULL, NULL, NULL, NULL),
        ("#{team13.id}", 'http://www.fcn.de/rss.xml', 'http://www.facebook.com/1.FCNuernberg', 'http://twitter.com/1_fc_nuernberg', NULL, NULL),
        ("#{team14.id}", NULL, NULL, NULL, NULL, NULL),
        ("#{team15.id}", 'http://www.fcaugsburg.de/cms/website.php?id=/index/aktuell/news.htm&rss=10', 'http://www.facebook.com/FCAugsburg', NULL, NULL, NULL),
        ("#{team16.id}", NULL, 'http://www.facebook.com/Hannover96', 'http://twitter.com/ichbin96', 'http://www.youtube.com/user/hannover96tv', NULL),
        ("#{team17.id}", NULL, 'http://www.facebook.com/BVBorussiaDortmund09', 'http://twitter.com/#!/bvb', NULL, 'https://plus.google.com/100024836578760513490/posts'),
        ("#{team18.id}", 'http://www.achtzehn99.de/news/rss', 'http://www.facebook.com/achtzehn99', 'http://twitter.com/achtzehn99', NULL, NULL)
    endsql
  end

  def down
    execute <<-endsql
      DELETE FROM social_communications
    endsql
    remove_column :social_communications, :youtube
    remove_column :social_communications, :google_plus
  end
end

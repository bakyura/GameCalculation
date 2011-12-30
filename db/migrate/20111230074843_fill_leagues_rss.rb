class FillLeaguesRss < ActiveRecord::Migration
  def up
    league1 = League.first(:conditions => {:alias => 'bundesliga'})
    league2 = League.first(:conditions => {:alias => 'england_premier_league'})
    league3 = League.first(:conditions => {:alias => 'spain_primera_division'})
    league4 = League.first(:conditions => {:alias => 'france_ligue_1'})
    league5 = League.first(:conditions => {:alias => 'italia_serie_a'})
    league6 = League.first(:conditions => {:alias => 'netherlands_eredivisie'})
    execute <<-endsql
      INSERT INTO leagues_social_communications (`league_id`, `rss`, `facebook`, `twitter`, `youtube`, `google_plus`) VALUES
        ("#{league1.id}", 'http://www.bundesliga.com/rss/en/liga/rss_news.xml', NULL, 'http://www.bundesliga.de/en/twitter/', NULL, NULL),
        ("#{league2.id}", NULL, NULL, NULL, NULL, NULL),
        ("#{league3.id}", NULL, 'http://www.facebook.com/lfpoficial', NULL, 'http://www.youtube.com/user/LFPoficial?blend=22&ob=5', NULL),
        ("#{league4.id}", 'http://www.ligue1.com/corporate/rss.xml', NULL, 'http://twitter.com/Ligue1com', NULL, NULL),
        ("#{league5.id}", 'http://feeds.feedburner.com/NewsSerieALeague?format=xml', 'http://www.facebook.com/serieatim', NULL, NULL, NULL),
        ("#{league6.id}", 'http://eredivisielive.nl/rss/nieuws', 'http://www.facebook.com/EredivisieLive', 'http://twitter.com/eredivisielive', NULL, NULL)
    endsql
  end

  def down
  end
end

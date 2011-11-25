class FillBundesligaFc < ActiveRecord::Migration
  def up
    add_column :football_clubs, :location, :string
    league = League.first(:conditions => {:country => 'DEU'})
    execute <<-endsql
      INSERT INTO football_clubs (`name`, `alias`, `location`, `league`, `web_site`, `logo`, `created_at`, `updated_at`) VALUES
        ('1.FC Keln', 'keln', 'Keln', '#{league.id}', 'http://www.fc-koeln.de', 'germany/Keln.jpg', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),
        ('FC Borussia', 'borussiam', 'Menhengladbah', '#{league.id}', 'http://www.borussia.de', 'germany/Borussia_M.jpg', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),
        ('FC Borussia', 'borussiad', 'Dortmund', '#{league.id}', 'http://www.bvb.de', 'germany/Borussia_D.jpg', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),
        ('FC Shalke 04', 'shalke04', 'Gelzenkirhen', '#{league.id}', 'http://www.schalke04.com', 'germany/Schalke.jpg', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),
        ('1. FCN', 'nurnberg', 'Nuremberg', '#{league.id}', 'http://www.fcn.de', 'germany/Nurnberg.jpg', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),
        ('FC Kaiserslautern', 'kaiserslautern', 'Kaiserslautern', '#{league.id}', 'http://www.fck.de', 'germany/Kaiserslautern.jpg', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),
        ('1899 Hoffenheim', 'hoffenheim', ' Sinsheim', '#{league.id}', 'http://www.achtzehn99.de', 'germany/Hoffenheim.jpg', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),
        ('SF Freiburg', 'freiburg', 'Freiburg', '#{league.id}', 'http://www.scfreiburg.com', 'germany/Freiburg.jpg', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),
        ('FC Augsburg 07', 'augsburg', 'Augsburg', '#{league.id}', 'http://www.fcaugsburg.de', 'germany/Augsburg.jpg', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),
        ('Vfl Wolfsburg', 'wolfsburg', 'Wolfsburg', '#{league.id}', 'https://www.vfl-wolfsburg.de', 'germany/Voflwolfsburg.jpg', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),
        ('Hertha BSC', 'gerta', 'Berlin', '#{league.id}', 'http://www.herthabsc.de', 'germany/Hertha.jpg', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),
        ('Bayer 04', 'bayer', 'Leverkusen', '#{league.id}', 'http://www.bayer04.de', 'germany/Bayer.jpg', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),
        ('Hannover 96', 'hannover', 'Hannover', '#{league.id}', 'http://www.hannover96.com', 'germany/Hannover.jpg', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),
        ('Hamburg SV', 'hamburg', 'Hamburg', '#{league.id}', 'http://www.hsv.de', 'germany/HSV.jpg', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),
        ('Werder', 'werder', 'Bremen', '#{league.id}', 'http://www.werder.de', 'germany/Werder.jpg', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),
        ('VfB Stuttgart', 'stuttgart', 'Stuttgart', '#{league.id}', 'http://www.vfb.de', 'germany/Stuttgart.jpg', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),
        ('FSV Mainz 05', 'mainz', 'Mainz',  '#{league.id}', 'http://www.mainz05.de', 'germany/Mainz.jpg', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),
        ('FC Bayern', 'bayern', 'Munich', '#{league.id}', 'http://www.fcbayern.telekom.de', 'germany/Bavaria.jpg', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
  end

  def down
  end
end

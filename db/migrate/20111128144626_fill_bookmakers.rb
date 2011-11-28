class FillBookmakers < ActiveRecord::Migration
    def up
    execute <<-endsql
      INSERT INTO bookmakers (`name`, `web_site`, `created_at`, `updated_at`) VALUES
        ('WillHill', 'http://www2.williamhill.com', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),
        ('Bet365', 'http://www.bet365.com', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),
        ('Unibet', 'http://ads.unibet.com', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),
        ('BWIN', 'https://www.bwin.com', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),
        ('Betfair', 'https://promotions.betfair.com', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),        
        ('2x2bet', 'http://www.2x2bet.com', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),        
        ('10bet', 'http://www.10bet.com', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}'),
        ('Titanbet', 'http://www.titanbet.com', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}', '#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}')
    endsql
  end

  def down
    execute <<-endsql
      DELETE FROM bookmakers
    endsql
  end
end

class FillLeagues < ActiveRecord::Migration
  def up
    add_column :leagues, :url, :string
    add_column :leagues, :alias, :string
    change_column :leagues, :country, :string
    execute <<-endsql
      INSERT INTO leagues (`alias`, `name`, `country`, `logo`, `url`) VALUES
        ('bundesliga', 'Bundesliga', 'DEU', 'logo/ger.jpeg', 'http://www.bundesliga.de'),
        ('england_premier_league', 'Premier League', 'GBR', 'logo/eng.jpeg', 'http://www.premierleague.com'),
        ('spain_primera_division', 'Primera Division', 'ESP', 'logo/spa.jpeg', 'http://www.lfp.es'),
        ('france_ligue_1', 'Ligue 1', 'FRA', 'logo/fra.jpeg', 'http://www.ligue1.com'),
        ('italia_serie_a', 'Serie A', 'ITA', 'logo/ita.jpeg', 'http://www.legaseriea.it'),
        ('netherlands_eredivisie', 'Eredivisie', 'NLD', 'logo/ned.jpeg', 'http://eredivisielive.nl')
    endsql
  end

  def down
    execute <<-endsql
      DELETE FROM leagues
    endsql
    remove_column :leagues, :url
    remove_column :leagues, :alias
  end
end

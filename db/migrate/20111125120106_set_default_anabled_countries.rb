class SetDefaultAnabledCountries < ActiveRecord::Migration
  def up
    execute <<-endsql
      UPDATE countries
        SET is_enabled = 1
          WHERE alpha_3_code IN ('FRA', 'DEU', 'ITA', 'NLD', 'ESP', 'CHE', 'PRT', 'GBR', 'UKR', 'RUS', 'BEL')
    endsql
  end

  def down
    execute <<-endsql
      UPDATE countries
        SET is_enabled = 0
    endsql
  end
end

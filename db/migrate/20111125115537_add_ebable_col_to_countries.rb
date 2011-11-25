class AddEbableColToCountries < ActiveRecord::Migration
  def self.up
    add_column :countries, :is_enabled, :boolean, :default => false
  end

  def self.down
    remove_column :countries, :is_enabled
  end
end

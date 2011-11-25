class AddLogoColToLeagues < ActiveRecord::Migration
  def self.up
    add_column :leagues, :logo, :string
  end

  def self.down
    remove_column :leagues, :logo
  end
end

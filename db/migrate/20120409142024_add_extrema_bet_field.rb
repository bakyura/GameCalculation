class AddExtremaBetField < ActiveRecord::Migration
  def up
    add_column :predictions, :is_extreme_bet, :boolean, :default => false
  end

  def self.down
    remove_column :predictions, :is_extreme_bet
  end
end

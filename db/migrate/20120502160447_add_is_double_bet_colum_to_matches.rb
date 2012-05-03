class AddIsDoubleBetColumToMatches < ActiveRecord::Migration
  def up
    add_column :predictions, :is_double_bet, :boolean, :default => false
  end

  def self.down
    remove_column :predictions, :is_double_bet
  end
end

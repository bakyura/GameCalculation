class ChangeTestTableName < ActiveRecord::Migration
  def up
    rename_table :tests, :background_tests
  end

  def down
    rename_table :background_tests, :tests
  end
end

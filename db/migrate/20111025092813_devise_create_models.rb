class DeviseCreateModels < ActiveRecord::Migration
  def self.up
    create_table(:models) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :models, :email,                :unique => true
    add_index :models, :reset_password_token, :unique => true
    # add_index :models, :confirmation_token,   :unique => true
    # add_index :models, :unlock_token,         :unique => true
    # add_index :models, :authentication_token, :unique => true
  end

  def self.down
    drop_table :models
  end
end

class AddTimezoneIdToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :timezone_id, :integer
  end

  def self.down
    remove_column :users, :timezone_id
  end
end

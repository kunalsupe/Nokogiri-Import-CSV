class AddPhoneIdToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :phone_id, :integer
  end

  def self.down
    remove_column :users, :phone_id
  end
end

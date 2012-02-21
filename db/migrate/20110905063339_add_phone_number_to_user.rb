class AddPhoneNumberToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :phone_number, :integer
  end

  def self.down
    remove_column :users, :phone_number
  end
end

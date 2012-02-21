class AddRefPhoneNumberToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :ref_phone_number, :integer
  end

  def self.down
    remove_column :users, :ref_phone_number
  end
end

class AddRefLastNameToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :ref_last_name, :string
  end

  def self.down
    remove_column :users, :ref_last_name
  end
end

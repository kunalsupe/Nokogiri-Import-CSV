class AddRefFirstNameToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :ref_first_name, :string
  end

  def self.down
    remove_column :users, :ref_first_name
  end
end

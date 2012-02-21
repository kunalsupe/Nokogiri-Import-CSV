class AddRefIsReferredToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :ref_is_referred, :string
  end

  def self.down
    remove_column :users, :ref_is_referred
  end
end

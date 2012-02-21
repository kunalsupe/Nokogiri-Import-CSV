class AddFileToRatesheets < ActiveRecord::Migration
  def self.up
    add_column :ratesheets, :file, :string
  end

  def self.down
    remove_column :ratesheets, :file
  end
end

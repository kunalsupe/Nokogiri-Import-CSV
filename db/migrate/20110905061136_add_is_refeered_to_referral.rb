class AddIsRefeeredToReferral < ActiveRecord::Migration
  def self.up
    add_column :referrals, :is_refeered, :boolean
  end

  def self.down
    remove_column :referrals, :is_refeered
  end
end

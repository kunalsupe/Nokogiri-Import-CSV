class AddReferralIdToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :referral_id, :integer
  end

  def self.down
    remove_column :users, :referral_id
  end
end

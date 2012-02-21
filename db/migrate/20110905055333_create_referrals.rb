class CreateReferrals < ActiveRecord::Migration
  def self.up
    create_table :referrals do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :referrals
  end
end

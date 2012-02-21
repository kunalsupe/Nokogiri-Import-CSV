class CreateRatesheets < ActiveRecord::Migration
  def self.up
    create_table :ratesheets do |t|
      t.integer :prefix
      t.string :city
      t.decimal :rate
      t.integer :country_id

      t.timestamps
    end
  end

  def self.down
    drop_table :ratesheets
  end
end

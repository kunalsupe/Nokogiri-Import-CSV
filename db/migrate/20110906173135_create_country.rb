class CreateCountry < ActiveRecord::Migration
  def self.up    
    create_table :country do |t|
	  t.string :country
          
    end
  end

  def self.down  
     drop_table :country
  end
end

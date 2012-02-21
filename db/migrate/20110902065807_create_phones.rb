class CreatePhones < ActiveRecord::Migration
  def self.up
    create_table :phones do |t|
	  t.integer :phone_number
	  t.string :phonetype
      t.timestamps
    end
    
    execute <<-SQL 
      INSERT INTO phones (phonetype) VALUES('Home');

      SQL
      
        
      execute <<-SQL 
        INSERT INTO phones (phonetype) VALUES('Office');

        SQL
  
  
        execute <<-SQL 
          INSERT INTO phones (phonetype) VALUES('Mobile');

          SQL
  
  end

  def self.down
    drop_table :phones
  end
  
  
end

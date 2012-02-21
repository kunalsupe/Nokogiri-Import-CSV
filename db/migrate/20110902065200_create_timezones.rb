class CreateTimezones < ActiveRecord::Migration
  def self.up
    create_table :timezones do |t|
		t.string :timezone
        t.timestamps
    end
    execute <<-SQL 
    INSERT INTO timezones (timezone) VALUES('(GMT -12:00) Eniwetok, Kwajalein');
 
    SQL
  
  
     execute <<-SQL 
      INSERT INTO timezones (timezone) VALUES('(GMT -11:00) Midway Island, Samoa');

      SQL
            
       execute <<-SQL 
        INSERT INTO timezones (timezone) VALUES('(GMT -10:00) Hawaii');

        SQL
  
           
         execute <<-SQL 
          INSERT INTO timezones (timezone) VALUES('(GMT -9:00) Alaska');

          SQL
             
  
           execute <<-SQL 
            INSERT INTO timezones (timezone) VALUES('(GMT -8:00) Pacific Time (US &amp; Canada)');

            SQL
               
  
             execute <<-SQL 
              INSERT INTO timezones (timezone) VALUES('(GMT -7:00) Mountain Time (US &amp; Canada)');

              SQL
 
 
                    execute <<-SQL 
                INSERT INTO timezones (timezone) VALUES('(GMT -6:00) Central Time (US &amp; Canada), Mexico City');

                SQL
 
       
                 execute <<-SQL 
                  INSERT INTO timezones (timezone) VALUES('(GMT -5:00) Eastern Time (US &amp; Canada), Bogota, Lima');

                  SQL
                     
 
 
                   execute <<-SQL 
                    INSERT INTO timezones (timezone) VALUES('(GMT -4:00) Atlantic Time (Canada), Caracas, La Paz');

                    SQL
 
                       
 
                     execute <<-SQL 
                      INSERT INTO timezones (timezone) VALUES('(GMT -3:30) Newfoundland');

                      SQL
 
                         
                       execute <<-SQL 
                        INSERT INTO timezones (timezone) VALUES('(GMT -3:00) Brazil, Buenos Aires, Georgetown');

                        SQL
 
                           
 
                         execute <<-SQL 
                          INSERT INTO timezones (timezone) VALUES('(GMT -2:00) Mid-Atlantic');

                          SQL
 
                                 execute <<-SQL 
                            INSERT INTO timezones (timezone) VALUES('(GMT -1:00 hour) Azores, Cape Verde Islands');

                            SQL
 
                               
 
                             execute <<-SQL 
                              INSERT INTO timezones (timezone) VALUES('(GMT) Western Europe Time, London, Lisbon, Casablanca');

                              SQL
 
                                 
 
                               execute <<-SQL 
                                INSERT INTO timezones (timezone) VALUES('(GMT +1:00 hour) Brussels, Copenhagen, Madrid, Paris');

                                SQL
 
                        
 
                                 execute <<-SQL 
                                  INSERT INTO timezones (timezone) VALUES('(GMT +2:00) Kaliningrad, South Africa');

                                  SQL
                                     
 
 
                                   execute <<-SQL 
                                    INSERT INTO timezones (timezone) VALUES('(GMT +3:00) Baghdad, Riyadh, Moscow, St. Petersburg');

                                    SQL
                                       
 
 
                                     execute <<-SQL 
                                      INSERT INTO timezones (timezone) VALUES('(GMT +3:30) Tehran');

                                      SQL
  
  
                                      execute <<-SQL 
                                      INSERT INTO timezones (timezone) VALUES('(GMT +4:00) Abu Dhabi, Muscat, Baku, Tbilisi');

                                      SQL


                                       execute <<-SQL 
                                        INSERT INTO timezones (timezone) VALUES('(GMT +4:30) Kabul');

                                        SQL

                                         execute <<-SQL 
                                          INSERT INTO timezones (timezone) VALUES('(GMT +5:00) Ekaterinburg, Islamabad, Karachi, Tashkent');

                                          SQL


                                           execute <<-SQL 
                                            INSERT INTO timezones (timezone) VALUES('(GMT +5:30) Bombay, Calcutta, Madras, New Delhi');

                                            SQL


                                             execute <<-SQL 
                                              INSERT INTO timezones (timezone) VALUES('(GMT +5:45) Kathmandu');

                                              SQL


                                               execute <<-SQL 
                                                 INSERT INTO timezones (timezone) VALUES('(GMT +6:00) Almaty, Dhaka, Colombo');

                                                SQL

                                                                  

                                                      execute <<-SQL 
                                                  INSERT INTO timezones (timezone) VALUES('(GMT +7:00) Bangkok, Hanoi, Jakarta');

                                                  SQL


                                                   execute <<-SQL 
                                                    INSERT INTO timezones (timezone) VALUES('(GMT +8:00) Beijing, Perth, Singapore, Hong Kong');

                                                    SQL



                                                     execute <<-SQL 
                                                      INSERT INTO timezones (timezone) VALUES('(GMT +9:00) Tokyo, Seoul, Osaka, Sapporo, Yakutsk');

                                                      SQL



                                                       execute <<-SQL 
                                                        INSERT INTO timezones (timezone) VALUES('(GMT +9:30) Adelaide, Darwin');

                                                        SQL


                                                         execute <<-SQL 
                                                          INSERT INTO timezones (timezone) VALUES('(GMT +10:00) Eastern Australia, Guam, Vladivostok');

                                                          SQL



                                                           execute <<-SQL 
                                                            INSERT INTO timezones (timezone) VALUES('(GMT +11:00) Magadan, Solomon Islands, New Caledonia');

                                                            SQL

                                                                   execute <<-SQL 
                                                              INSERT INTO timezones (timezone) VALUES('(GMT +12:00) Auckland, Wellington, Fiji, Kamchatka');

                                                              SQL

                                                   
  
  end
  
  
  def self.down
    drop_table :timezones
  end
  
  
 
end

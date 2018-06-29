#!/usr/bin/ruby

require 'pg'

begin

    con = PG.connect :dbname => 'postgres', :user => 'postgres', 
        :password => 'postgres'

    user = con.user
    db_name = con.db
    pswd = con.pass
    
    puts "User: #{user}"
    puts "Database name: #{db_name}"
    puts "Password: #{pswd}" 
    
rescue PG::Error => e

    puts e.message 
    
ensure

    con.close if con
    
end

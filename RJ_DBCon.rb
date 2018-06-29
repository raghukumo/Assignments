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
  # con.exec "CREATE TABLE tickets(S_NO INTEGER PRIMARY KEY, 
   #     F_Name VARAR(20),L_Name VARAR(20), Status VARAR(10))"
i = 1
j = 1
 
more = true
while more==true
puts " 1.Check availability \n 2.book tickets \n 3.check details \n"
puts"enter your choice"
ch = gets.to_i

if ch==1
	sn1 = Array.new(100)
puts "Booked seats are..."

sn = con.exec('select s_no from tickets')
puts sn.values
puts "_________________________________________"
puts "#{sn.count} seats are booked already"
#sn.ea do |num|
 #   puts num
end

if ch==3
tab = con.exec('select * from tickets')
puts tab.values

end

sn1 = con.exec('select s_no from tickets')

if ch==2
puts "Enter seat number to book between 1 to 100 seats..."
s_no = gets.to_i
if s_no <100 && s_no>0
 


#puts sn[8]

#puts "Booked seats are....#{sn.length}"

#size = sn.length
f_name = "";
l_name = "";
status = ""
puts "Enter name...."
	f_name = gets.chomp
	puts "Enter surname...."
	l_name = gets.chomp
	
while i <= 100
		if s_no != sn1[i]
	
    con.exec "insert into tickets values(#{s_no},'#{f_name}','#{l_name}','Booked')"
#con.exec "select * from tickets"
	puts "booking successful"
break
		else
	puts "Already exists ... "
		end
	i = i+1
end
else
puts "Enter seat no. between 1 to 100 ... "
end
end



puts "Want to book more y/n"
  a = gets.chomp
  if a!="y"
  
    more = false
  end

end

=begin
#con.exec "select * from tickets"
sth = con.exec("SELECT * FROM EMPLOYEE WHERE INCOME > ?")
    sth.fet do |row|
   printf "Seat No.: %d First Name: %s, Last Name : %s\n", row[0], row[1],row[2]
   printf "Status: %s\n", row[4]
end
=end  


#_______________________________________________

rescue PG::Error => e

    #puts e.message 
    
ensure

    con.close if con
    
end

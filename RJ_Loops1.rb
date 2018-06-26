
#class Loop
	ch = true
	i=1
#while ch == true
puts"Enter a number for its table"
num = gets.chomp.to_i

puts"1.While\n2.until\n3.begin..while or until\n4.for"
puts"Enter your choice"
choice = gets.chomp.to_i

	if choice==1
	puts"using While..."
	while i<=10
  
 	 sum = num *i
 	 puts sum
 	 i+=1 
	end


	elsif choice==2
	puts"using until..."
	until i>10 do
  	sum = num *i
  	puts sum
  	i+=1 
end

elsif choice==3
puts"using begin..."
begin
  sum = num *i
  puts sum
  i+=1 
end while i<11 # we can use until instead of while

elsif choice==4
puts"using for..."
for i in i..(i*10)
puts i*num
end

end

#puts "Want to continue... y/n"
#a = gets.chomp
#if a!= "y"
#ch = false
#end 
#end
#end

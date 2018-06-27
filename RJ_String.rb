puts "Enter a single string or sentense"
str = gets.chomp
puts "Entered string is ...#{str}"

puts "1.Length\n2.character at perticular index\n3.UpperCase\n4.downcase\n5.InitCap\n6.Align atcentre\n7.Check word or letterexists in string or not\n8.replaceword \nEnter your choice" 
ch = gets.to_i

if ch==1
puts "Length of entered string is #{str.length}"
end

if ch==2
puts "Enter index"
ind = gets.to_i;
puts "#{str.slice(ind)}"
end

if ch==3
puts "string in uppercase is... #{str.upcase}"
end

if ch==4
puts "string in lowercase is... #{str.downcase}"
end

if ch==5
puts "string in initcap is... #{str.capitalize}"
end

if ch==6
puts "#{str.center(30)}"
end

if ch==7
puts "Enter word or letter to check .."
l1 = gets.chomp
	if str.include?("#{l1}")==true
puts "present in string"
end

else
puts "not present in string"
end

if ch==8
puts"Enter existing word"
exst = gets.chomp

puts"Enter replacing word"
repl = gets.chomp
puts str.sub("#{exst}"," #{repl}") 

end


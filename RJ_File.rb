puts "1.Create File\n2.read\n3.write\n4.rename\n5.details"
puts "Enter your choice"
ch = gets.to_i

if ch==1
puts "Enter name of file to create..."
name=gets.chomp
f = File.new("#{name}","w+") 
end

if ch==2
puts "Enter filename to open..."
f_name=gets.chomp
File.open("#{f_name}").each do |line|
	puts line
puts "Created..."
end
end

if ch==3
puts "Enter filename to write..."
f_name=gets.chomp
puts "Enter content to last ..."
add=gets.chomp
File.open("#{f_name}","a") do |line|
	line.puts "\r" + "#{add}"
puts "Content added..."
end
end


if ch==4
puts"Enter name of file to rename..."
s1=gets.chomp
puts"Enter new name..."
s2=gets.chomp
File.rename("#{s1}","#{s2}")
puts "renamed..."
end


if ch == 5
puts"enter filename"
name = gets.chomp
print "size:-"
puts File.size("#{name}")
print "type:-"
puts File.ftype("#{name}")
print "create_time:-"
puts File.ctime("#{name}")
print "alter_time:-"
puts File.atime("#{name}")
print "modify_time:-"
puts File.mtime("#{name}")
end

if ch == 6
puts"enter filename"
name = gets.chomp
File.delete("#{name}") 
puts "Deleted..." 
end





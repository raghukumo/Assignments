friendgame_hash = {}
input = ""
friend = ""
game = ""

puts "press any key to contunue / Press Enter to quit "
input = gets.chomp

while input != "" do 
 puts "Enter name of friend: "
 friend = gets.chomp
 puts "Enter friends favorite game: "
 game = gets.chomp

 # There was a typo here
 friendgame_hash[friend] = game
 input = gets.chomp
end

puts "Here is the content that was in the hash: "
friendgame_hash.each do |key, value|
 puts "#{key} => #{value}"

end



puts "1.Size of hash\n2.Delete element by key\n3.invert\n4.find by value\n5.convert to array\n6.clear"

puts "Enter your choice..."
ch = gets.to_i

if (ch==1)
puts "size of hash is ...#{friendgame_hash.length}"
end

if (ch == 2)
puts "Enter key to delete ..."
del = gets.to_i
puts friendgame_hash.delete("#{del}")
puts "deleted"
end

if ch==3
puts friendgame_hash.invert
puts "after inverted"
puts friendgame_hash
end

if ch==4
puts "enter value..,"
k1=gets.to_i 
puts friendgame_hash.key"#{k1}"
end

if (ch==5)
puts {friendgame_hash.to_a}
end


if (ch==6)
friendgame_hash.clear
puts "after clearing... "
puts friendgame_hash
end




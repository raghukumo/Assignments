puts "Enter the size of the array"
 a = gets.to_i
 puts "Enter #{a} elements"
 b = Array.new
  for i in 0..a-1
     b[i] = gets.to_i
  end
puts "Array is..."
 # for i in 0..a-1
  #   puts b[i]
	puts "The array list is  #{b}"
  #end
puts"1.Size\n2.index and type for element\n3.add element\n4.remove element"
puts"Enter your choice"
choice = gets.chomp.to_i
 

if choice==1
puts "size of array is ... #{b.length}" 
end

if choice==2
puts "Enter index for its corrosponding element" 
n = gets.to_i
#num = b[i].values
puts "Element is...#{b[n]}"


puts "type of array is.. #{b[0].class}"
end
if choice==3
#_______________________
puts "Enter element to add in array.."
add1 = gets.to_i
puts "Enter index to add.."
n = gets.to_i

b.insert(n,add1)

puts "The array list is  #{b}"
end
if choice==4

puts "Enter index to remove element..."
rem = gets.to_i
b.delete_at(rem)
puts "The array list is  #{b}"
end

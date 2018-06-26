 class Bubble
  def order
  puts "Enter the size of the array"
 a = gets.to_i
 puts "Enter #{a} elements"
 b = Array.new
  for i in 0..a-1
     b[i] = gets.to_i
  end
 k = b.size 
  for j in 0..k
     for i in 0..k
      if b[i+1] == nil 
        break
      end
        if b[i] > b[i+1]
           temp = b[i+1]
           b[i+1] = b[i]
           b[i] = temp
         puts "The Bubble sorted list is  #{b}"
        end
     end
  end
 end
end
obj = Bubble.new
obj.order


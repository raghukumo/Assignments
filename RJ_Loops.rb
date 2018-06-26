#while loop
count = 1
sum = 0
	while count <= 10
	#puts sum "+" count "=" sum + count	
	sum += count
	count +=1
	end
puts "_______________while loop________________\nsum of first ten no.s ... #{sum}"



puts "___________________________________________________"

more = true
while more==true
#Taking marks from user for marks
  puts "Enter you name"
  name = gets.chomp
  puts "Maths marks"
  maths_marks = gets.chomp.to_i
  puts "Science marks"
  science_marks = gets.chomp.to_i
  puts "English marks"
  english_marks = gets.chomp.to_i
  puts "Computer marks"
  comupter_marks = gets.chomp.to_i
  total = maths_marks+science_marks+english_marks+comupter_marks
   percentage = (total/400.0)*100
  puts "#{name} your total marks is #{total} and your percentage is #{percentage}"

  
  puts "Want to enter more y/n"
  a = gets.chomp
  if a!="y"
  
    more = false
  end
end

puts "__________________until loop _________________________\n table of 2"

i = 2
until i>21
  puts i
  i = i + 2
end

puts "__________________begin loop ________________________\n" 
i=0
begin
  puts i
  i=i+1
end while i<5 # we can use until instead of while

puts "__________________for loop ________________________\n"
puts"Evenly divisible by 7 "
for i in 1..100
   puts i if i % 7==0
end 





class Person
	attr_accessor :name
	attr_accessor :surname

  def initialize(name,surname)
	@name = name
	@surname = surname
  end


  def print
    "Name : #{@name}\nsurname : #{@surname}"
  end
end

	puts " Enter name :"
	n = gets.chomp
	puts " Enter surname :"
	s = gets.chomp
	person = Person.new(n,s)
	puts person.print


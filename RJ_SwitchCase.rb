

class Vehicle
  attr_accessor :wheels

  def initialize(wheels)
    @wheels = wheels
  end

  def ===(another_vehicle)
    self.wheels == another_vehicle.wheels
  end
end

four_wheeler = Vehicle.new 4
two_wheeler = Vehicle.new 2
three_wheeler = Vehicle.new 3

print "Enter number of wheel for vehicle: "
vehicle = Vehicle.new gets.chomp.to_i

puts case vehicle
when two_wheeler
  'Vehicle is two-wheeler!'
when four_wheeler
  'Vehicle is a four-wheeler!'
when three_wheeler
  "Vehicle is autorikshaw" 	
else
  "Don't know of a vehicle with that wheel arrangement!"
end

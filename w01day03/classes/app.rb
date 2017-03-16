require_relative "./car.rb"
require_relative "Tax_Bands.rb"

# assigning sams_car variable to a new Car
# now has the properities we've set in car.rb
sams_car = Cars.new "blue" , "BMW" , "320i" , 2.0 , "Estate"

cars =[]
cars.push sams_car

tax_band = Tax_Bands.get_tax_band sams_car.engine_size
# puts sams_car.engine_size
puts sams_car.description
puts "The tax band is #{tax_band}"

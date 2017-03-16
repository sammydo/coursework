require_relative "./Airport.rb"
require_relative "./Terminal.rb"
require_relative "./Flight.rb"
require_relative "./Person.rb"
require_relative "./menu.rb"




# List of Airport
list_of_airports = [
  Airport.new("London Heathrow" , "England"), Airport.new("London Gatwick" , "England"),
  Airport.new("Manchester" , "England"), Airport.new("Birstol International" , "England")
]

# List of Terminal
list_of_airports[0].terminal = [Terminal.new("south", 1000), Terminal.new("north", 1100),
  Terminal.new("West", 1300), Terminal.new("East", 1400)
]

# List of Flight
list_of_airports[0].terminal[0].flight = [Flight.new("England to Portugal"), Flight.new("England to Spain"),
  Flight.new("England to New York"), Flight.new("England to Amsterdam" )

]

# List of Person
list_of_airports[0].terminal[0].flight[0].person = [Person.new("Cril Mupakile"), Person.new("Salman Khan"),
  Person.new("Osvaldo"), Person.new("Joe Clayton")
]





user_input = menu

while user_input != 9
case user_input
when 1
  list_of_airports.each do |airport|
    puts airport.name
  end
when 2
  puts "Type 0 to view Flights"
  terminal_index = gets.chomp.to_i
  current_terminal = list_of_airports[terminal_index].terminal[terminal_index]
  current_terminal.flight.each_with_index do |flight, index|
  puts "#{index}) #{flight.desti}"
  end
when 3
  puts "Type 0 to view Terminals"
  airport_index = gets.chomp.to_i
  current_airport = list_of_airports[airport_index]
  current_airport.terminal.each_with_index do |terminal, index|
  puts "#{index}) #{terminal.name}"
  end
when 4
  puts "Type 0 to view Persons"
  flight_index = gets.chomp.to_i
  current_flight = list_of_airports[flight_index].terminal[flight_index].flight[flight_index]
  current_flight.person.each_with_index do |person, index|
  puts "#{index}) #{person.fullname}"
end
when 5
  puts "Enter flight depature & Destination"
  terminal_index = gets.chomp.to_i
  current_terminal = list_of_airports[terminal_index].terminal[terminal_index]
  current_terminal.flight.each_with_index do |flight, index|
  puts "#{index}) #{flight.desti}"
  # puts list_of_airports #push Flight.new(create_flight)
  # current_terminal.flight.each_with_index do |flight, index|
  # puts "#{index}) #{flight.desti}"
end
when 6
  puts "Test 6"
when 7
  puts "Test 7"
when 8
  puts "Test 8"
end
gets
user_input = menu
end

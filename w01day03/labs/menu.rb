def menu
  puts `clear`
  puts "\n" + "DevOps1 Airport".upcase + " -- " + "Enter coresponding number for required action"
  puts "-----------------------------------------------------------------------------------"
  puts "[1]" + " || " + "List Aiports"
  puts "[2]" + " || " + "List Flights of Airport"
  puts "[3]" + " || " + "List Terminals of Airport"
  puts "[4]" + " || " + "List of Passenger on Flight "
  puts "[5]" + " || " + "Create New Flight"
  puts "[6]" + " || " + "Add Passengers to a Flight"
  puts "[7]" + " || " + "Remove Passengers from a Flight"
  puts "[8]" + " || " + "List all Passengers on a Flight"
  gets.chomp.to_i

end

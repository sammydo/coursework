# Basic If statments
if 5<10
  puts "yes its true"

end


# One liner (If)
if 6 < 10 then puts " one liner true" end

# if else statments

if 10<6
  puts " if not true so this wont run"
else
  puts "if else statements works "
end

# One liner ( If Else statments)
if 10<6 then puts "should not work" else puts "one liner if else statements" end


# Elseif statments
if 50 < 5
  puts " 50 is greater than 5"
elsif 5 < 10
  puts "elsif statement works"
else
  puts "neither of those things were true"
end


# Unless statment
my_variable = 5
unless my_variable > 10
  puts " my var is not greater than 10"
end

# unless one liner statment
my_not_variable = 10
unless my_not_variable > 100 then puts "unless statement works" end

# Ternary
my_boolean = true
puts my_boolean ? "its true" : "its false"

# Comparisons < > >= <= ! != == ||

# Spaceships results will be -1 ,0, 1 ... if A < B (a=-1)|| if A > B(a=1) if A == B(a=0)
a = 20
b = 20
puts a <=> b

# ZERO(0) in ruby TRUTHY
# Nill and False are Falsey in ruby
my_array = []

if my_array
  puts "my array exists"
end

if my_array.length
  puts " this doesnt mean there is anything in the array "
end



# more specific comparisons
my_second_array = [1,2,3,4]
another_array = [1,2,3,4]

# compares the values of the array
if my_second_array.eql? another_array
  puts "these are eql"
end

#  compares the object/ check to see if its a duplicate ( wont work as the array are different objects)
if my_second_array.equal? another_array
  puts "these are equal"
end

# short circuiting-----------------------
if true || 5<10

  puts "one of these are true"
end

# Real world examples ----------------------
# real world example
def log_startup_attempts
  # increase the log counter

  # return the number attempts
end

new_machines_blocked = true
#or starts from the left and looks for trues
if new_machines_blocked || log_startup_attempts > 10
  puts "you cannot start any more machines"
end

# short circuit with another_array
# ands start from the other end and look for falses
if new_machines_blocked && log_startup_attempts > 10
  puts " you really cant start any more machines "
end




# switch statements

grade = "A"

case grade
when "A"
  puts "Well done!"
when "B"
  puts "Try harder!"
when "C"
  puts "You just making it up"
else
  puts " You just making it up!"
end

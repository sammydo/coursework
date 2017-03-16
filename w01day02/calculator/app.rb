require "bmi"
require "pry"

# bmi = BMI.new

# require_relative "./basic.rb"


def operation
  puts "\n" + "calculator".upcase + " -- " + "Enter coresponding number for required function"
  puts "-----------------------------------------------------------------------------------"
  puts "[1]" + " || " + "Addition "
  puts "[2]" + " || " + "Subtraction "
  puts "[3]" + " || " + "Multiplication "
  puts "[4]" + " || " + "Divison "
  puts "[5]" + " || " + "Power Of "
  puts "[6]" + " || " + "Square Root "
  puts "[7]" + " || " + "BMI "


  @operation = 0
  @operation = gets.chomp.to_i

  if @operation == 1
     "add"
    elsif @operation == 2
       "subtract"
    elsif @operation == 3
       "multiply"
    elsif @operation == 4
        "divide"
    elsif @operation == 5
          "power"
    elsif @operation == 6
          "square"
    elsif @operation == 7
          "BMI"
  end

end

def calculation(operator, a, b = nil)
  if operator == "add"
    a + b
    elsif operator == "subtract"
      a - b
    elsif operator == "multiply"
      a * b
    elsif operator == "divide"
      a / b
    elsif operator == "power"
      a ** b
    elsif operator == "square"
      Math.sqrt(a)
  end
end

calculator  = 1
  while calculator === 1
    current_calculation = operation
    puts "\n" + "|| #{current_calculation}".upcase
    puts "------------------------------------"
    if @operation == 6
      puts "\n" + "What is the  number you would you like to #{current_calculation}: "
      first_number = gets.to_i
      answer = calculation(current_calculation, first_number)
      puts "\n" + "The answer is   #{answer}   ".upcase
      puts "\n" + "Type 1 to run another calculation or anything else to end: "
      elsif  @operation == 7
        puts "Enter you height (m): "
        high = gets.to_f

        puts "Enter you weight (kgs): "
        # bulk = gets.to_f
        yourbmi = "%.1f" % (bulk / (high * high))
        puts "\n" + "The answer is #{yourbmi}"
        # puts "\n" + "What is your weight "
        # bmi.weight = gets.to_i
        # puts "\n" + "What is your Height "
        # bmi.height = gets.to_i
        # root = bmi.calc
        # answer = root
        # puts "\n" + "The answer is #{answer}"
      else
        puts "\n" + "What is the first number you would you like to #{current_calculation}: "
        first_number = gets.to_i
        puts "\n" + "What is the second number you would like to #{current_calculation}: "
        second_number = gets.to_i
        answer = calculation(current_calculation, first_number, second_number)
        binding.pry
        puts "\n" + "The answer is   #{answer}   ".upcase
        puts "\n" + "Type 1 to run another calculation or anything else to end: "

    end
    calculator = gets.to_i
  end







# squared_root = 1


# bmi_calc = 1
# while bmi_calc ==1
#     current_calculation = @operation
#     bmi = BMI.new
#     puts "\n" + "|| #{current_calculation}".upcase
#     puts "------------------------------------"
#     puts "\n" + "What is your weight "
#     bmi.weight.gets.to_i
#     puts "\n" + "What is your Height "
#     bmi.height.gets.to_i
#     root = bmi.calc
#     answer = root
#     puts "\n" + "The answer is #{answer}"
#     puts "\n" + "Type 1 to run another calculation or anything else to end: "
#     bmi_calc = gets.to_i
#
# end

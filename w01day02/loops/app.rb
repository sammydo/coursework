
# for loops

# double dot(..)includes 5|| tripe dot doesn't include 5
for i in 0...5
puts "index is #{i}"
end

array_of_values = ["steve", "bob", "sam"]
for name in array_of_values
  puts "name was: #{name}"
end



# while loops

counter = 0

while counter < 10
  puts "counter :#{counter}"
  counter+=1
end

# until loops

until counter == 0
  puts "counter is now #{counter}"
  counter -=1
end


#each loops

array_of_values.each do |value|
  puts " i oulled these values ut of the array : #{value}"

end


array_of_values.each_with_index do |value,index|
  puts " values: #{value} index : #{index}"

end


numbers_array = [1,2,3,4,5,]
squared_array = numbers_array.map do |value|
  value * value
end
puts squared_array
# there is a map! fncton as well that changes the original array


# reduce ( aka inject)
sum_array = [1,2,3,4,7,20]
total = sum_array.reduce do |sum,value|
  sum + value
end
puts "sum array :"
puts total

# total = sum_array.reduce(:+) works aswell


# finnd the longest word



words = ["Lexi", "Steve", "Bob", "Oliver, Niall"]

longest_name = words.reduce do |memo,word|
  memo.length > value.length ? memo : word
end
puts longest_name

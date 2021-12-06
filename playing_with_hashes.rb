# 1---------------------------
# Create a program that:
# — prompts the user for details about their favourite animal
# — stores the details as values, assigned to appropriate keys
# — prints the hash once the interrogation has finished

fav_animal = Hash[]
puts
puts "Task 1 --------------------------------"
puts 'Whats your favourite animal?'
fav_animal[:animal] = gets.chomp

puts 'Whats the color?'
fav_animal[:color] = gets.chomp

puts 'Which continent does it originate from?'
fav_animal[:continent] = gets.chomp

puts fav_animal

# 2---------------------------
# create a program that:
# — prints all the keys in a hash
# -- prompts the user to select a key
# — returns the value associated with that key
puts
puts "Task 2 --------------------------------"
fav_animal.each {|key, value| puts key }
puts "Please select a key"
puts fav_animal[gets.chomp.to_sym]


# 2---------------------------
# -- Iterate over a hash and print only the values that begin with ‘S’
puts
puts "Task 3 --------------------------------"
fav_animal.each_value { |value| puts value if value.chr == 'S' }

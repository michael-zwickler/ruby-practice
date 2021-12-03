# 1. turn this [[1,1,1,1], [2,2,2,2]] into this [4, 8]
puts '#1----------'
array = [[1,1,1,1], [2,2,2,2]]
print array
count = 0
while count < array.length
  sum = 0
  array[count].each do |subarray|
    sum += subarray
  end
  array[count] = sum
  count += 1
end
puts
print array
puts

# 2. select the odd numbers from this array [1,2,3,4,5,6,7,8,9,10] => [1,3,5,7,9]
puts '#2----------'
array_input = [1,2,3,4,5,6,7,8,9,10]
odds_from_input = []
odds_from_input2 = []

array_input.each do |number|
  odds_from_input.push(number) if number.odd?
end
print odds_from_input
puts
odds_from_input2 = array_input.select {|number| number.odd? }
print odds_from_input2
puts
print array_input.select(&:odd?)
puts

# 3. puts each name that starts with ‘S’ from [‘Sandy’, ‘Terrence’,‘Susan’, ‘Humphrey’, ‘Simone’, ‘Englebert’, ‘Imogen’, ‘Ron’]
puts '#3-----------'
array = ['Sandy', 'Terrence','Susan', 'Humphrey', 'Simone', 'Englebert', 'Imogen', 'Ron']
puts(array.select { |name| name.chr == 'S' })

# 4. put into new array in caps [‘Sandy’, ‘Terrence’,‘Susan’, ‘Humphrey’, ‘Simone’, ‘Englebert’, ‘Imogen’, ‘Ron’]
puts '#4-----------'
array = ['Sandy', 'Terrence','Susan', 'Humphrey', 'Simone', 'Englebert', 'Imogen', 'Ron']
print array.map{ |name| name.upcase }

# 5. get user input and add whatever they say to an array, stop when they say ‘stop’ -> combining loops and arrays
puts
puts '#5-----------'
array = []
while true
  user_input = gets.chomp
  
  break if user_input == 'stop'
  
  array.push(user_input)
end
print array
puts


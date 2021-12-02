# frozen_string_literal: true

# The user sees a greeting, which asks them to enter their name.
# The user enters their name.
# If the user's name begins with 'S',
# the program shouts the user's name back at them.
# If the user's name begins with any other letter,
# the program just says 'Hi, ' plus their name.

print 'Please type your name: '
name = gets.chomp

if name.downcase[0] == 's'
  puts "#{name.upcase}"
else
  puts "Hello #{name.capitalize}"
end

# Alternative with ternary operator and chr instead of array[0]
# name.downcase.chr == 's' ? (puts name.upcase) : (puts "Hello #{name.capitalize}")

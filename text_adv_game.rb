# frozen_string_literal: true

# The user starts by facing forward
# They can move right, left, or forward
# If they move right, they die (there's a goblin)
# If they move left, they die (there's a werewolf)
# If they move forward, they live
# They have to do this twice to win
puts "Welcome to the game. You're facing forward!"
print 'Where do you want to go? Type left, right, forward! '
survived = 0
while true
  direction = gets.chomp.downcase

  if direction == 'right'
    puts 'There is a goblin. You died!'
    break
  elsif direction == 'left'
    puts 'There is a werewolf. You died!'
    break
  elsif direction == 'forward'
    print 'You moved forward. Where next? '
    survived += 1
  else
    print "I didn't understand you well. Please type again. "
    next
  end

  if survived >= 2
    puts 'You won!'
    break
  end
end

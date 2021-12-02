# Write a program that rolls a six-sided die and returns the result. This program should be runnable from the command line.
# Write the dice game as above.
# Upgrade the dice game: now both I and my opponent roll two six-sided dice each.
# Upgrade the game once more: now we play several rounds for each game. The first player to win two rounds wins the game. (Still with two dice each.)

def wuerfeln 
    return rand(6) + 1
end

player1_wins= 0
player2_wins= 0
round = 1

while true do
    
    player1_rand = wuerfeln() + wuerfeln()
    player2_rand = wuerfeln() + wuerfeln()
    puts "Round: " + round.to_s
    round += 1
    puts "  Player 1: " + player1_rand.to_s
    puts "  Player 2: " + player2_rand.to_s      
    
    if player1_rand > player2_rand
        player1_wins += 1
    elsif player1_rand < player2_rand
        player2_wins += 1
    else
        next
    end
    
    if player1_wins == 2
        puts "Player 1 won!"
        break
    elsif player2_wins == 2
        puts "Player 2 won!"
        break
    end
end



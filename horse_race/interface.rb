# In this challenge we will build a program that simulates a horse race. 
# Like in a real race, the user will see a list of competing horses, 
# choose on which horse they wish to bet on and finally find out if their preferred sprinter won or not. 
# The user will be able to place bets until they run out of money.

# Step 1 - Simple race (no loop)
# 1. Welcome user 
puts "===🐎====🐎====🐎==="
puts 'Welcome to the Horse Race!'
puts "===🐎====🐎====🐎===="
# 2. Make some horses (an array of strings)
horses = [
  "Eric the horse", 
  "Kevin the Pale", 
  "Yann the magnificent", 
  "Sea biscuit", 
  "Tanaka"]
answer = "Y"
money = 10_000

# `money.positive?` same as `money > 0`

while answer == "Y" && money >= 1000
  # 3. Display the horses names (iterate over the array with the index)
  #   1 - Eric the horse
  #   2 - Kevin the Pale
  #   3 - Yann the magnificent
  #   4 - Sea biscuit
  # in the doc, check Enumarbles for each_with_index
  horses.each_with_index do |horse, index|
    puts "#{index + 1} - #{horse}"
  end
  # 4. Ask the user to choose a horse
  puts "Choose your horse!"
  # 5. Get the input from user, store in a variable
  user_choice = gets.chomp
  # 6. Select a horse randomly, store in a variable
  computer_pick = horses.sample
  # 7. if chosen horse is the randomly selected one -> win
  if user_choice == computer_pick
    puts "You won! 🎉"
    money += 5000
    # money = money + 5000
  else
  # 8. else -> lose :'(
    puts "You lost! 😭"
    money -= 1000
    # money = money - 1000
  end
  # 9. Display the results, display the winning horse
  puts "The winning horse is: #{computer_pick}"

  puts "You balance is #{money}"

  if money.positive?
    # Step 2 - Race with a loop 
    # 10. Ask the user if wants to try again
    puts "Wanna try again? Y/N"
    # 11. Get the user input
    answer = gets.chomp.upcase
  else
    puts "You're broke"
  end
  # 12. Loop (or not) according to the user answer (while loop, from #3)
end

# Step 3 - Add the betting (win = +5000¥, lose = -1000¥) (start with 10000¥)
# 13. Define a money variable
# 14. Udpate the money amount depending on win or lose
# 15. Display the user balance
# 16. if money amount is zero, say "You're broke", stop the program (check in the loop condition)


# optional: ask the user what she/he wants to bet



# Side note:
# long_horses = horses.select do |horse|
#   horse.length >= 10
# end
# p long_horses
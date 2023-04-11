# In this challenge we will build a program that simulates a horse race. 
# Like in a real race, the user will see a list of competing horses, 
# choose on which horse they wish to bet on and finally find out if their preferred sprinter won or not. 
# The user will be able to place bets until they run out of money.

# Step 1 - Simple race (no loop)
# 1. Welcome the user
puts "===🐎====🐎====🐎==="
puts 'Welcome to the Horse Race!'
puts "===🐎====🐎====🐎===="
# 2. Create a list of horses (Array)
horses = ["Yann of the Vale","Jelly Bean","Crazy tornado","Poney Boy","Princess"]
#                 0               1              2             3          4   (length => 5)
continue = 'anything_but_n'

# 13. initialize a money variable (¥10,000)
balance = 10_000

until continue == 'n' || balance <= 0
  # 3. Display the list of horses (iterate using each_with_index)
    # 1 - Yann of the Vale
    # 2 - Jelly Bean
    # 3 - Crazy tornado
    # 4 - Poney Boy
    # 5 - Princess
  horses.each_with_index do |horse, index|
    puts "#{index + 1} - #{horse}"
    sleep 0.3
  end
  # 4. Ask the user to choose a horse (number)
  puts "\nChoose a horse number!"
  # 5. Store it in a variable as an index
  user_index_choice = gets.chomp.to_i - 1
  # 6. Get a random horse, store it in a variable
  computer_index_choice = rand(0...horses.length)
  # 7. if the user the horse is the winner, announce the win
  # 8. otherwise, announce the lose
  # 9. Display the user horse and the winning horse
  # 14. if result is a win, add 5000
  #     else, substract 1000
  if user_index_choice == computer_index_choice
    puts "\nCongratulations! Winning horse: #{horses[computer_index_choice]}"
    balance += 5000
  else
    puts "\nYou lost!! Winning horse: #{horses[computer_index_choice]}"
    balance -= 5000
  end

  # 15. Display the new balance
  puts "Your balance is ¥#{balance}"
  
  # 16. if the user runs out of money, (ask for his/her CC) he/she cannot play
  if balance <= 0 
    puts "Give us your Credit Card number to continue please 😇"
  else
    # Step 2 - Race with a loop 
    # 10. Ask the user if she/he wants to play again
    puts "Do you want to continue? y/n"
    # 11. Get user answer
    continue = gets.chomp
    # 12. Re-do the Step 1 until the user says no
  end
end

# Step 3 - Add the betting (win = +¥5000, lose = -¥1000)


# optional: ask the user what she/he wants to bet



# We will build a simple calculator 
# handling the 4 basic operations (+, - , *, /). 
# The program will ask the user for
# - two numbers 
# - one of the four operators 
# in order to be able to perform a simple calculation and display the result to the user.

# Pseudo-code
require_relative 'calculator'

# STEP 1
confirmation = "anything but no"
# 1. Welcome the user
puts "Welcome"
# 2. Ask for the first number
# while confirmation == "y" || confirmation == "yes" 
until confirmation == "no"
  puts "What's your first number?"
  # 3. Get the user input and store into variable
  first_number = gets.chomp.to_i
  # 4. Ask for the second number
  puts "What's your second number?"
  # 5. Get the user input and store into variable
  second_number = gets.chomp.to_i
  # 6. Ask for an operation
  puts "Should an operator from the following list: +, -, *, /"
  # 7. Get the user input and store into variable
  operator = gets.chomp
  # 8. Make the calculation based on the given operator
  # 9. Display the result
  puts calculator(first_number, second_number, operator)

  # STEP 2 - Loop

  # 10. Ask the user if they want to do another calculation
  puts "Do you want to continue? write y/yes if you do"
  # 11. Get the user input
  confirmation = gets.chomp
  # 12. Loop the step 1 (steps 2-9) until the user says no
end


# Code
# We will build a simple calculator 
# handling the 4 basic operations (+, - , *, /). 
# The program will ask the user for
# - two numbers 
# - one of the four operators 
# in order to be able to perform a simple calculation and display the result to the user.

# Pseudo-code
require_relative 'calculator'

# STEP 1
# 1. Say hi to the user
puts "Hello! Welcome to the calculator 🧮"
answer = "Y"
# while answer == "Y"
until answer == "N"
  # 2. Ask for a first number
  puts "Enter your first number:"
  # 3. Get the input of user, store in a variable
  first = gets.chomp.to_i
  # 4. Ask for a second number
  puts "Enter your second number:"
  # 5. Get the input of user, store in a variable
  second = gets.chomp.to_i
  # 6. Ask for an operation
  puts "Enter your operator:"
  ope = gets.chomp
  # 7. Calculate result according to user input (define a method)
  # 8. Display the result
  puts "Result:"
  puts calculator(first, second, ope)

  # STEP 2 - Loop
  # 9. Ask user if they want to calc again
  puts "Try again? Y/N"
  # 10. Get the user input
  answer = gets.chomp
end
# 11. Depending on user input, loop (or not), get back to #2 (use a while loop)

# Code
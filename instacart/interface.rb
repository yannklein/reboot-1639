# Step 1+2 - Shopping cart with quantity 🛍🛍

# Modeling the store and the cart
#   - Data type of the store and the cart?
#   - Structure of each?

store = {
  "kiwi" => 100,
  "milk" => 250,
  "onigiri" => 150,
  "daikon" => 100,
  "natto" => 50
}

cart = {
  # empty at the beginning
  # "item" => quantity
}

bill = 0
user_choice = 'anything but quit!'

# 1. Welcome the user
puts "~" * 20
puts "Welcome to Le Wagon Store"
puts "~" * 20
# 2. Show the list of item in the store (iterate)
puts "\nIn our store today:"
store.each do |item, price|
  puts "#{item.capitalize} - ¥#{price}"
  sleep 0.2
end

until user_choice == "quit"
  # 3. Ask the user some items (or 'quit')
  puts "What item do you want? (or 'quit' to checkout)"
  # 4. Get the user input and store it in a variable
  user_choice = gets.chomp.downcase
  # 5. Check if the user choice is in the store
  if store.key?(user_choice)
    # If yes:
    # 6. Ask the user how many items?
    puts "How many items do you want?"
    # 7. Get the user input (convert it to_i) store it in a variable
    user_choice_number = gets.chomp.to_i
    # 8. if new item, we had the key/value to cart
    #    if existing item, update the quantity in cart
    if cart.key?(user_choice)
      cart[user_choice] += user_choice_number
    else
      cart[user_choice] = user_choice_number
    end
  elsif user_choice == 'quit'
    puts "Thank you for shopping with us."
  else
    puts "Sorry, the #{user_choice} is not available!"
    #    If not:
    #      -> tell user that the item does not exist
  end
  # p cart
end
# 9. Loop from step3 to step8 until the user answers 'quit'
# 10. Calculate and display the bill 
#    (iterate over the cart, multiply quantity * price from store)

puts "\n-------BILL---------"
cart.each do |item, quantity|
  #      user quantity * unit price form the store
  sub_total = quantity * store[item]
  bill += sub_total
  puts "#{item}: #{quantity} X ¥#{store[item]} = ¥#{sub_total}"
end
puts "TOTAL: ¥#{bill}"
puts "--------------------"
















# Step 3 - Adding availability 🛍🛍🛍

# Modeling the store and the cart
#   - Data type of the store and the cart?
#   - Structure of each?
##########################
# PSEUDOCODE

# Step 1+2 - Shopping cart with quantity 🛍🛍

# see code itself

# Step 3 - Adding availability 🛍🛍🛍

# change step 2 with new store structure
# change step 4, store a symbol
# after step 7, check if enough items in store
# if not, we say "Sorry, there are only 3 kiwis left."
# if there is, update the store stocks, do next steps
# in the bill, change store[item] to get the price from the new store structure
##########################


store = {
  kiwi: {stock: 5, price: 100},
  milk: {stock: 10, price: 250},
  onigiri: {stock: 20, price: 150},
  daikon: {stock: 2, price: 100},
  natto: {stock: 30, price: 50}
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
store.each do |item, values|
  puts "#{item.capitalize} - ¥#{values[:price]} (#{values[:stock]} in stock)"
  sleep 0.2
end

until user_choice == "quit"

  # 3. Ask the user some items (or 'quit')
  # 4. Get the user input and store it in a variable
  puts "What item do you want? (or 'quit' to checkout)"
  user_choice = gets.chomp.downcase
  item_key = user_choice.to_sym

  # 5. Check if the user choice is in the store
  if store.key?(item_key)
    # If yes:
    # 6. Ask the user how many items?
    # 7. Get the user input (convert it to_i) store it in a variable
    puts "How many items do you want?"
    user_choice_number = gets.chomp.to_i

    # check if enough items in store
    if user_choice_number > store[item_key][:stock]
      puts "There is not enough #{item_key}, we have only #{store[item_key][:stock]}"
    else
      # 8.a. update the store stocks
      store[item_key][:stock] -= user_choice_number
      # 8.b. if new item, we had the key/value to cart
      #      if existing item, update the quantity in cart
      if cart.key?(item_key)
        cart[item_key] += user_choice_number
      else
        cart[item_key] = user_choice_number
      end
    end
  elsif user_choice == 'quit'
    puts "Thank you for shopping with us."
  else
    puts "Sorry, the #{user_choice} is not available!"
    #    If not: tell user that the item does not exist
  end
end
# 9. Loop from step3 to step8 until the user answers 'quit'

# 10. Calculate and display the bill 
#    (iterate over the cart, multiply quantity * price from store)
puts "\n-------BILL---------"
cart.each do |item, quantity|
  #      user quantity * unit price form the store
  sub_total = quantity * store[item][:price]
  bill += sub_total
  puts "#{item}: #{quantity} X ¥#{store[item][:price]} = ¥#{sub_total}"
end
puts "TOTAL: ¥#{bill}"
puts "--------------------"

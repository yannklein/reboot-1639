##########################
# PSEUDOCODE

# Step 1+2 - Shopping cart with quantity 🛍🛍
# SEE CODE BELOW

# Step 3 - Adding availability 🛍🛍🛍
# 1. Redesign the store hash for it to store item's stock
# 2. Add stock when display store
# 3. When asked how many and get user input:
#    - check if enough stock, if not "Sorry, only XXX remaining"
#    - the stock decreases
# 4. Update the code in the billing part (for the store)

##########################

# 1. welcome the users
puts "-~" * 10
puts "Welcome to Instacart"
puts "-~" * 10

# 2. define a store (hash)
store = {
  "kiwi" => {"price" => 100, "stock" => 10},
  "mango" => {"price" => 500, "stock" => 5},
  "natto" => {"price" => 50, "stock" => 7},
  "avocado" => {"price" => 200, "stock" => 1},
  "mighty banana" => {"price" => 1000, "stock" => 1000}
}
# 2.5 define a cart (hash)
cart = {
  # "items" => quantity
}
# 3. display the store items to the user, iterate
store.each do |item, info|
  puts "#{item.capitalize}: ¥#{info["price"]} ( #{info["stock"]} available)"
end

user_choice = "anything_but_quit"

until user_choice == 'quit'
  # 4. ask user which item they would like
  puts "Which item? (or 'quit' to checkout)"
  # 5. get the user input
  user_choice = gets.chomp
  # 5.5 if item not in store, say "We don't have it"
  # if store[user_choice].nil?
  if store.key?(user_choice)
    # 6. Ask how many?
    puts "How many"
    # 7. get the user input, and store it in the user's cart with the items name
    quantity = gets.chomp.to_i
    available = store[user_choice]["stock"]
    if quantity > available
      puts "Sorry there is only #{available} left."
    else
      # add items with quantity into cart
      store[user_choice]["stock"] -= quantity
      # available = available - quantity
      unless cart.key?(user_choice)
        cart[user_choice] = 0
      end
      cart[user_choice] += quantity
      # p cart
    end
  elsif user_choice == 'quit'
    puts "Good bye!"
  else 
    puts "We don't have it"
  end
  # 8. loop over steps 4 to 7 until the user input is 'quit'
end
# 9. calculate the bill
puts "-------BILL---------"
total = 0
# 10. display the bill, iterate throught the cart hash
cart.each do |item, quantity|
  # store[item] gives us a hash with the price and stock info
  # store[item]["price"] gives us the item's unit price
  sub_total = store[item]["price"] * quantity
  total += sub_total
  # kiwi: 2 X 1.25€ = 2.5€
  puts "#{item}: #{quantity} X ¥#{store[item]["price"]} = ¥#{sub_total}"
end
puts "TOTAL: ¥#{total}"





##########################
# PSEUDOCODE

# Step 1+2 - Shopping cart with quantity 🛍🛍

# Step 3 - Adding availability 🛍🛍🛍

# 1. Redesign the store
# store = {
#   'kiwi' => { 'price' =>  200, 'stock' => 100 },
#   # ...
# }

# 2. Change the store display code

# 3. after knowing the wanted quantity,
# check if there is stock
# if yes, add quantity to the cart, decrease store quantity
# if no, say "Sorry, there are only XX kiwis left."

# 4. Update bill calculation (the store part)

##########################

# Step 1+2 - Shopping cart with quantity 🛍🛍

# 1. Welcome the user
puts "~" * 20
puts "Welcome to the Le Wagon store"
puts "~" * 20
# 2. Create a store item (array)
store = {
  'kiwi' => { 'price' =>  200, 'stock' => 10 },
  'banana' => { 'price' =>  100, 'stock' => 5 },
  'avocado' => { 'price' =>  500, 'stock' => 3 },
  'strawberry' => { 'price' => 8000, 'stock' => 10 }
}
# 3. Create a cart
cart = {
  # item => amount
}
# 4. Display the store items (iterate)
store.each do |item, details|
  # details is a hash { 'price' => XXX, 'stock' => YYY }
  puts "#{item} - ¥#{details['price']} (#{details['stock']} available)"
end

puts "~" * 20
# 9. Loop steps 5 to 8 until the user says quit
user_input = 'anything but quit'
until user_input == 'quit'
  # while user_input != 'quit'
  # 5. Ask user which item
  puts "What item would you like?"
  # 6. Get user input
  user_input = gets.chomp
  if store.key?(user_input)
    # 7. Ask how many
    puts "How many?"
    # 8. Get user input, store item and quantity in the cart
    quantity = gets.chomp.to_i
    if quantity < store[user_input]['stock']
      unless cart.key?(user_input)
        cart[user_input] = 0
      end
      cart[user_input] += quantity
      store[user_input]['stock'] -= quantity
    else
      puts "Sorry, we just have #{store[user_input]['stock']} #{user_input} left"
    end
  elsif user_input == "quit"
    puts "Good bye"
  else
    puts "We don't have #{user_input}"
  end
end
# p cart
# 10. Calculate the bill (price * quantity), and the total
total = 0
cart.each do |item, quantity|
  # item price = store unit price * quantity
  item_price = store[item]['price'] * quantity
  total += item_price
  # kiwi: 1 X ¥200 = ¥200
  puts "#{item}: #{quantity} X ¥#{store[item]['price']} = ¥#{item_price}"
end
# TOTAL: ¥2200
puts "TOTAL: ¥#{total}"
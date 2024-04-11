store = {
  kiwi: {stock: 5, price: 100},
  milk: {stock: 10, price: 250},
  onigiri: {stock: 20, price: 150},
  daikon: {stock: 2, price: 100},
  natto: {stock: 30, price: 50}
}
cart = Hash.new(0)
bill = 0
user_choice = 'anything but quit!'

puts "~" * 20
puts "Welcome to Le Wagon Store"
puts "~" * 20
puts "\nIn our store today:"

store.each do |item, values|
  puts "#{item.capitalize} - ¥#{values[:price]} (#{values[:stock]} in stock)"
  sleep 0.2
end

until user_choice == "quit"

  # ask for an item
  puts "What item do you want? (or 'quit' to checkout)"
  user_choice = gets.chomp.downcase
  item_key = user_choice.to_sym

  # if the user say quit, leave the loop
  if user_choice == 'quit'
    puts "Thank you for shopping with us."
    break
  end

  # if the user select an item not in store, say sorry and ask for a new item
  unless store.key?(item_key)
    puts "Sorry, the #{user_choice} is not available!"
    next
  end

  # ask for a quantity
  puts "How many items do you want?"
  user_choice_number = gets.chomp.to_i

  # if not enough stock in store, say sorry and ask for a new item
  item_stock = store[item_key][:stock]
  if user_choice_number > item_stock
    puts "There is not enough #{item_key}, we have only #{item_stock}"
    next
  end

  # core part of the code! update the stock and the cart 
  store[item_key][:stock] -= user_choice_number
  cart[item_key] += user_choice_number
end

puts "\n-------BILL---------"
cart.each do |item, quantity|
  unit_price = store[item][:price]
  sub_total = quantity * unit_price
  bill += sub_total
  puts "#{item}: #{quantity} X ¥#{unit_price} = ¥#{sub_total}"
end
puts "TOTAL: ¥#{bill}"
puts "--------------------"
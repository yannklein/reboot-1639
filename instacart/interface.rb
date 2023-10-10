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


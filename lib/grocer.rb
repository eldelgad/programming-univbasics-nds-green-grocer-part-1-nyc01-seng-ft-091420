require 'pry'

####### PSEUDOCODE #######

# method find_item_by_name_in_collection takes the name, collection arguments
  # should iterate over the collection.each do  |key, value| 
    # check the value of the key (:item) in each nested hash
  # if the value is equal to the name the method should return that entire nested hash
    # re-iterate through the collection & hash
  # if an :item is not found, find_item_by_name_in_collection should return nil

def find_item_by_name_in_collection(name, collection)
  counter = 1
  while counter < collection.length
    return collection[counter] if collection[counter][:item] == name
  counter += 1
  end
  
end
  
  # collection.each do |hash|
    
  #   hash.each do |key, value|
  #     return hash if value == name
  #   end
    
  # end
  
  # collection.each do |hash|
    
  #   hash.each do |key, value|
  #     return nil if value != name
  #   end
    
  # end

# end

####### PSEUDOCODE #######

  
# REMEMBER: This returns a new Array that represents the cart. Don't merely
# change `cart` (i.e. mutate) it. It's easier to return a new thing.


# method consolidate_cart takes in the argument cart (AoHoItems)
  # return a new_cart (AoH) with each item containing a quantity(possible index manipualtion)

def consolidate_cart(cart)

new_cart = []
counter = 0

  while counter < cart.length

    new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
  
    if new_cart_item != nil
      new_cart_item[:count] += 1
    else
      new_cart_item = {
        :item => cart[counter][:item],
        :price => cart[counter][:price],
        :clearance => cart[counter][:clearance],
        :count => 1
      }
      
      new_cart << new_cart_item
  
    end
    counter += 1
  end
  new_cart
end


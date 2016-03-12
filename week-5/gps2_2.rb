=begin
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # define a method to take a string convert to hash keys
  # iterate the keys and add a default quantity
  # print the hash
# output: hash

# Method to add an item to a list
# input: item and quantity(optional)
# steps: add item as key and quantity as value default 1
# output: new hash list with new item added

# Method to remove an item from the list
# input: item
# steps: check list for item and delete if found
# output: new hash list with item deleted

# Method to update the quantity of an item
# input: item and uptdated quantity
# steps: check for item and replace the quantity 
# output: updated hash list with new quantity

# Method to print a list and make it look pretty
# input: hash list
# steps: iterated throught the hash item by item and print the key and value
# output: printed list

=end

# Initial Solution

# Create a list
def list (strings)
  array_list = strings.split(/ /)
  grocery_list = Hash.new(0)
  array_list.each do |x|
    grocery_list[x] += 1
  end
  print_list(grocery_list)
  return grocery_list
end

# Add an Item
def add_to_list (grocery_list, string, integer=1)
  grocery_list[string] = integer
end

# Remove an Item
def remove_from_list (grocery_list, string)
  grocery_list.delete (string) 
end

# Update quantity of an Item
def update_list (grocery_list, string, integer)

  grocery_list.each do |key, value|
    if key == string
      grocery_list[key] = integer
    end
  end
  puts grocery_list
end

# Print the List
def print_list (grocery_list)
  grocery_list.each do |key, value|
    puts "#{key} : #{value}"
  end
end



    
grocery_list = list("banana apple pear")
add_to_list(grocery_list,"grapes",3)
remove_from_list(grocery_list,"apple")
update_list(grocery_list,"banana",10)
print_list(grocery_list)


=begin

What did you learn about pseudocode from working on this challenge?

It helps to have write down the concept so that you can refer back when you get stuck to realize what
each step is looking for.  This helped us realize that we need to pass the list back in otherwise
there was nothing to update.

What are the tradeoffs of using Arrays and Hashes for this challenge?
For this challenge we definatly wanted to have the hash as the list we would pass through the methods,
but breaking the string down was certinaly better done using an array initially to hold the values.


What does a method return?

method can return any object you want.  It depends on what the method is designed to do.


What kind of things can you pass into methods as arguments?

You can pass strings, integers, boolen's, arrays, hashes, floats etc.

How can you pass information between methods?

You can call the method whitin another method as long as you give it the proper arguments.

What concepts were solidified in this challenge, and what concepts are still confusing?

This challenge helped me work with hashes more as I was a bit fuzzy on how to use them.  Also learned
how to take a default value as an argument if none was given. Thanks to my pair.

=end
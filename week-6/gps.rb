# Your Names
# 1) Talal Talhouk
# 2) Matt Higgins (guide)

# We spent [1] hour on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

# refactor
  unless library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

=begin
  error_counter = 3
# checking if argument item_to_make input is part of library
  library.each do |food|
    if library[food] != library[item_to_make]
      error_counter += -1
    end
  end

# raise error if not part of library
  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
=end

#set serving size = value at item_to_make key

  serving_size = library[item_to_make] #refactor
  
#calculates number of remaining ingredients
  remaining_ingredients = num_of_ingredients % serving_size

#return string showing how many of item can be made and include ingredients left over.
  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{remaining_ingredients} cookie(s)"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

=begin
What did you learn about making code readable by working on this challenge?

Sometimes combinding two steps into one can improve the readibility greatly.  Such as in the first 2 blocks of code
one was creating a counter to check the hash then the next raised an argument error if that counter was a certian value.
This could all be done in one step which actually reads much more cleanly.  Also learned that just because a method exists
such as the method that made an array out of values exists, it's not necessarly better to use it than just directly calling
the value when that is what your code is set up to do.


Did you learn any new methods? What did you learn about them?
I've seen the has_key? method in the docs but hadn't used it before.  This was very useful in checking
the hash for a valid variable.

What did you learn about accessing data in hashes? 

There are many methods to access the data such as checking for keys or values and creating array's but
sometimes just directly calling them from their key value is best.

What concepts were solidified when working through this challenge?

When to refactor and when to not.  Also combine steps if possible to eliminate unnecessary code
will improve readablilty and make it simple to figure out exatly what the code is trying to do.
! operator infront of argument will evaluate the argument then do the opposite could be useful 
going forward.  Also a block of code can be passed in the #{} to convert to a string.


=end
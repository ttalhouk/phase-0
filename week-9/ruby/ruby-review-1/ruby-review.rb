# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
=begin
Input: Should be an array of integers
Output: An array that has been changed where multiples of 3 are replaced with "Fizz"
        Mulitples of 5 with "Buzz" and muliples of 15 with "FizzBuzz"


1) Check each element in the array for multiples of 3, 5, or 15
2) If one is found pass the appropriate string to the element of the new list
3) Once list is complete, return the new list


=end


# Initial Solution

# def super_fizzbuzz(array)
  
#   array.each_with_index do |e , i|
#     if e % 3 == 0 && e % 5 == 0
#       array[i] = "FizzBuzz"
#     elsif e % 3 == 0
#       array[i] = "Fizz"
#     elsif e % 5 == 0
#       array[i] = "Buzz"
#     end
#   end
#   return array
# end





# Refactored Solution

def super_fizzbuzz(array)
  
  array.map! do |e|
    if e % 3 == 0 && e % 5 == 0
      e = "FizzBuzz"
    elsif e % 3 == 0
      e = "Fizz"
    elsif e % 5 == 0
      e = "Buzz"
    else
      e = e
    end
  end
  return array
end





# Reflection

# What concepts did you review in this challenge?
# What is still confusing to you about Ruby?
# What are you going to study to get more prepared for Phase 1?
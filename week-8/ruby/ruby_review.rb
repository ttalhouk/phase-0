# I worked on this challenge [by myself].
# This challenge took me [1] hours.

# Pseudocode
# Based on research if a number is a perfect square of 5*N^2+4 or 5*N^2-4 so...

# take number that is added in and compute the two cases for checking
# take each of those numbers and calculate the square root and convert it to an integer to truncate off any decimals
# check is that integer squared is equal to the number it came from
# IF so return true ELSE return false


# Initial Solution

def is_fibonacci?(num)
  fib_upper = 5 * (num**2) + 4
  fib_lower = 5 * (num**2) + 4
  root_upper = (fib_upper**0.5)
  root_lower = (fib_lower**0.5)
  
  if (fib_upper == root_upper**2) || (fib_lower == root_lower**2)
    return true
  else
    return false
  end
end



# Refactored Solution







# Reflection
# I worked on this challenge [by myself].
# This challenge took me [1] hours.

# Pseudocode
# Based on research if a number is a perfect square of 5*N^2+4 or 5*N^2-4 so...

# take number that is added in and compute the two cases for checking
# take each of those numbers and calculate the square root and convert it to an integer to truncate off any decimals
# check is that integer squared is equal to the number it came from
# IF so return true ELSE return false


# Initial Solution

# def is_fibonacci?(num)
#   fib_upper = (5 * (num*num) + 4)
#   fib_lower = (5 * (num**2) - 4)
#   root_upper = Math.sqrt(fib_upper).to_i
#   root_lower = (fib_lower**0.5).to_i
#   if (fib_upper == root_upper**2) || (fib_lower == root_lower**2)
#     return true
#   else
#     return false
#   end
# end

# Seems to have some type of round off error with big numbers will try another method in the refacor

# Refactored Solution

# compute the series by adding the two previous numbers in the series.
# continue calculating until calculated number that is being checked exceeds number input.
# if it ever equals then return true if the it exceeds the limit then false.
  
def is_fibonacci?(num)
  n1=0
  n2=1
  fib=1
  while fib < num do
    fib = n1 + n2
    if fib == num
      return true
    end
    n1 = n2
    n2 = fib
  end
  return false
end

# Reflection

# When using the calculation method for determining fibonacci numbers I was getting failing the test with big numbers.
# Reading online I found out that when squaring or and sqrt large numbers you can encounter significant round off errors.
# Due to this I decided that I should be able to just run through using a loop to check each fibonacci number in order and stoping if
# I landed on the number or exceeded it.  This feels a bit like a brute force method but can quickly get the correct result and 
# doesn't requrire converting types which could change the number.

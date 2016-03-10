# Pad an Array

# I worked on this challenge [with: Lisa ]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? An array, an integer for the size of the new array, and a potential value for to fill in the new array with.
# What is the output? (i.e. What should the code return?) A new array with the new values. One would be destructive (overwrite what was given). One is non-destructive (add on to the array.)
# What are the steps needed to solve the problem?
#Compare the array size with the minimum size.
#If the min_size > array size, create a new array whose length is the difference between min size and array size. (non-destructive.)
#If the value is given, fill in the new array with that value.

#Take the array that is inputted.
#Merge the existing array with the given array.


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  
  if array.length > min_size
  return array
  else
   newarr = Array.new(min_size-array.length)
   newarr.fill(value)
   array << newarr
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  result_array = []
  if array.length > min_size
   return array
  else
   newarr = Array.new(min_size-array.length)
   newarr.fill(value)
   result_array = array + newarr

  end
  return result_array

end



# 3. Refactored Solution



# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
-I believe our psudocode does represent the what the problem is asking.  It returns the appropriate values.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
-The psudocode translates fairly closely to the description.  We did have to look up some aspects of the code such as .fill

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
Our code pased all but the non-destructive test.  We added some puts to test the object_id's and found they should be equal.  Looking
at the rspec file it is asking for it to be non destructive but not equal.  Not sure what the problem is.

When you refactored, did you find any existing methods in Ruby to clean up your code?
the fill command helped so we didn't have to iterate and manually fill in the array.

How readable is your solution? Did you and your pair choose descriptive variable names?
The variable names are reasonable, though could be a little more descriptive

What is the difference between destructive and non-destructive methods in your own words?
destructive methods perminently change the varialbe where as non-destructive creates new arrays. 

=end
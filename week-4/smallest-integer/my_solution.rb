# Smallest Integer

# I worked on this challenge [by myself, with: ].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  x=0
  if list_of_nums.length > 0
    min=list_of_nums[0]
  else
    min=nil
  end
    while x < list_of_nums.length do
      if list_of_nums[x]<min
        min=list_of_nums[x]
      end
      x+=1
    end
  return min
end
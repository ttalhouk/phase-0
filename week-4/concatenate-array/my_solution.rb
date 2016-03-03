# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below

def array_concat(array_1, array_2)

#iterate over the second array
  array_2.each do |x|
#place value of each item at the end of first array
    array_1.push x
  end
#return value of first array
  return array_1
end
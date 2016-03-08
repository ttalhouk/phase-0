# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a positive integer
# What is the output? a comma sperated integer
# What are the steps needed to solve the problem?
=begin
1. Convert the input to an integer and make sure it's value is greater than 0
2. Count the number of 1000's and set up a container with that many spaces
3. Iterate the value by dividing off the # of thousands and placing it in the container
4. Join all the values of the container with a ","
5. pass the number string

=end


# 1. Initial Solution

def separate_comma(input)
  input=input.to_i
  value=0
  if input < 0
    return "This is not a positive integer"
  end
  
  if input < 1000
    return input.to_s
  else
      
      loops=0
      remain = input
      until remain < 1000
          loops += 1
          remain = input / 1000**loops
      end
      
      string_value=Array.new(loops+1)
      x = 0
      while x <= loops

          value = input / (1000**(loops-x))


        if x !=0 && value < 10
            string_value[x] = "00" + value.to_s
            elsif x !=0 && value < 100
              string_value[x] = "0" + value.to_s
            else
              string_value[x] = value.to_s
        end
        input = input - (value * 1000**(loops-x))
        x += 1
      end
      return string_value.join(",")
      
  end
end





# 2. Refactored Solution
def separate_comma(input)
  string_value=input.to_s.split(//)
  string_value.reverse!
  x=1
  y=0
  string_value.each do
    if x == 3 && y != string_value.count-1
      string_value[y]= "," + string_value[y]
      x=0
    end
    x += 1
    y += 1
  end
  
  return string_value.reverse.join
    
end




# 3. Reflection
=begin

What was your process for breaking the problem down? What different approaches did you consider?

-I wanted to group the items in sets of 3 and then remove what was grouped and repeat until I had the whole number.  I was thinking about trying to
split it but that was forbiden until the refactoring.

Was your pseudocode effective in helping you build a successful initial solution?

-Yes it was a guide to start from.  I did find that I didn't take into account all the special cases which I needed to add in later.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

-I learned the split a string into an array method.  This helped me when do my original idea.

How did you initially iterate through the data structure?

-Initially I wanted to figure out how many thousands I had then iterated the number that many times to create the arrays which I would join later.

Do you feel your refactored solution is more readable than your initial solution? Why?

-Sort of, I think there may be a more elegant way to do it but 2hrs in I didn't want to keep working on it as I was getting tiered.

=end

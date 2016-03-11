# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Anne]

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array
# What is the output? An array of the highest frequency values
# What are the steps needed to solve the problem?
=begin
1) Create an array for frequencies that is the same length as the input series
2) Iterate through the input series looking for duplicate values to the value in the first position
3) If a duplicate is found increment the frequency value in the frequency array by 1
4) Repeat the checks but only look forward for matches so that you don't get duplicate values
5) next check the freqency array for the largest values and push the input array's value at that position to the final array


=end

# 1. Initial Solution

=begin


def mode(input)
  freq=Array.new(input.length) {|i| i*0}
  array=[]
  position=0
  input.each do |x|
    counter=position
    while counter<input.length
      if input[counter]==x
        freq[position]+=1
      end
      counter+=1
    end
    position+=1
  end
  position=0
  freq.each do |f|
    if f==freq.max
      array.push input[position]
    end
    position+=1
  end
  return array
end

=end

# 3. Refactored Solution

def mode(input)
  freq=Array.new(input.length).fill(0)
  array=[]
  position=0
  input.each do |x|
    freq[position]=input.count(x)
    position+=1
  end
  position=0
 
  freq.each do |f|
    if f==freq.max
      array.push input[position]
    end
    position+=1
  end
  return array.uniq
end


# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?

We both had diffent ideas for doing this task.  Anne tried using a hash and I was pushing for an a second array for holding frequencies.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

We both psuedocoded our ideas (I didn't get a copy of her's).  They made sense for doing the function they were supposed to do.

What issues/successes did you run into when translating your pseudocode to code?

We had an issue implementing her hash method.  I'm not that experienced with hashes yet to figure out the proper syntax.
We decided to try my array method and we had an issue with the array not being able to be incremented so the array because it was
initialize as nil.  Had to make them = 0 then it worked

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
when refactoring we found a method to count instances in an array called....  .count(value) this is perfect for frequencies but resulted in 
duplicate values since we didn't ittereate forward to exclude duplicates.  We then found the uniq method which solved that issue.


=end
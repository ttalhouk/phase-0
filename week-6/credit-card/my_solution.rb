# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [ with: Abid Ramay ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An Integer
# Output: True if valid number or False if invalid number
# Steps:
=begin
1) Initialize class with credit card number
2) Pass it to a method to convert the number to an array
3) Check length of array to see if it is 16 digits and return an error if it is not
4) Pass the validation array to a number checking method
5) Reverse validation array
6) itterate array doubling every other element
6a) check if doubled number is > 9 then split and add
7) Add all elements together
8) Divide by 10 and there should be no remainder  (number%10 == 0)
9) Return true IF == 0 ELSE false
=end


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(number)
    @number=number
    check_card
  end
  
  def check_card
    validation_array = @number.to_s.split(//)
    if validation_array.length != 16
      raise ArgumentError.new
    end
    check_number(validation_array.reverse!)
  end
  
  def check_number(array)
    check_array=[]
    array.each_with_index do |item , index|
      if index.odd?
        check_array[index] = item.to_i * 2
      else
        check_array[index] = item.to_i
      end
    end
    sum_array(check_array) 
  end
  
  def sum_array(array)
    
    sum = 0
    array.each_index do |index|
      if array[index] > 9
        array[index]=array[index].to_s.split(//)
      end
    end
    
    array.each do |x|
      if x.kind_of?(Array)
        x.each do |y| 
          sum += y.to_i
        end
      else
        sum += x
      end
      puts sum
    end
    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end
# Reflection
=begin

What was the most difficult part of this challenge for you and your pair?
We had a good idea of what to do and our Psudocode was solid, but figuring out the best way to sum
the array's of arrays was a bit tricky.  Ultimatly we just decided to check for arrays and iterate through
as we did on previous assignments


What new methods did you find to help you when you refactored?
The each_with_index helped as we could use the value and the index to keep track of position instead of 
having to use a counter and the value of the element as well.


What concepts or learnings were you able to solidify in this challenge?
I solidified my understanding when passing info from one method to another.  We were having trouble
initially with raising the argument error until we realized we needed to call the method from the initialize method.


=end
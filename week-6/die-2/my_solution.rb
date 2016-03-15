# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Arbetrary list of strings (array)
# Output: a die with enough sides to hold each symbol input
# Steps:
=begin
1) accept an array of symbols and check if it is a legal die (>0 sides)
2) IF the input is an array and has more than 0 sides
    set the sides equal to the lenght of the list and set the list as a instance variable
    ELSE Count the objects and set the die to have that many sides.it is illegal return an error 
    Also name each side with a label array.
3) Return the number of sides of the die object if called
4) If rolled return a random position between 0 and the number of sides -1 and return its label


=end


# Initial Solution
=begin
class Die
  def initialize(labels)
    if labels.is_a?(Array) && labels.length > 0
      @labels=labels
      @sides=labels.length
    else  
      raise ArgumentError.new("Not a leagal die")
    end
  end

  def sides
    @sides
  end

  def roll
    return @labels[rand(0..@sides-1)]
  end
end
=end


# Refactored Solution

class Die
  def initialize(labels)
    if labels.is_a?(Array) && labels.length > 0
      @labels=labels
      @sides=labels.length
    else  
      raise ArgumentError.new("Not a leagal die")
    end
  end

  attr_reader :sides

  def roll
    return @labels[rand(0..@sides-1)]
  end
end






# Reflection
=begin
-What were the main differences between this die class and the last one you created in terms of implementation? 
-Did you need to change much logic to get this to work?

The main difference is that we needed to keep track of the symbols that were passed in so we could reference 
the die roll to the symbol.  It basically needed an extra instance variable set to the original array.

-What does this exercise teach you about making code that is easily changeable or modifiable?

Classes are powerful tools.  If you know that you will make objects that behave similarly you can create
shared code and only have to modify a little to get lots of flexiablity.


What new methods did you learn when working on this challenge, if any?
I used is_a?(Array) to ensure that the input was an array to check for a legal die. At first
I put a space between ? (Array) it did not work so I learned it has to be right after.


What concepts about classes were you able to solidify in this challenge?
Mainly instance variables are required if you want to keep shared info within the class

=end
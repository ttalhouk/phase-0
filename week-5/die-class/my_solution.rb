# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [.5] hours on this challenge.

# 0. Pseudocode

# Input: Expecting a class call of Die.new(integer>0)
# Output: Error if < 1 otherwies a die is created that can tell how many sides it has or be rolled
# Steps:
=begin
1. Check for a leagal die when a new die is created.  Accpet an integer that will be the number of sides the die has.
2. If it is illegal return an error otherwise set the die to have that many sides.  This will be a property of that die.
3. Return the number of sides of the die object if called
4. Return a random number between 1 and the number of sides if roll is called.

=end


# 1. Initial Solution

=begin
class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Not a leagal die")
    end
    @sides=sides
  end

  def sides
    @sides
  end

  def roll
    return rand(1..@sides)
  end
end

=end

# 3. Refactored Solution

class Die
  def initialize(sides)
    raise ArgumentError.new("Not a leagal die") if sides < 1
    @sides=sides
  end

  attr_reader :sides

  def roll
    return rand(1..@sides)
  end
end


# 4. Reflection

=begin
What is an ArgumentError and why would you use one?
If you have arguments that you are expecting but may be passed the wrong type of argument then you will want to raise the error.
This will keep your code from receiving bad information, and help trouble shoot code if you calling a class later with bad info.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I used the random mthod and raise method.  These were fairly straight forward based on the examples given in the doumentmetion.

What is a Ruby class?
A class is a set of code that defines an object and can contain the methods that that object can use.  In this example 
we created a die that we can define should have a certian number of sides and able to be rolled.  When called with the 
class name.new (arguments) it will create an object that inherits those methods contained in that class.


Why would you use a Ruby class?
If you want to define an object it is a good way to go about it.  This way you can call it up later instead of having one block 
defining that object in your code and then making the whole thing tough to debug


What is the difference between a local variable and an instance variable?
Local variables only exist in the method that they are in.  instance variables can be passed through out the class once defined. 
In our example sides is an instance variable that defined the number of sides for that pericular die that was created. 
It was created with the @ prefix in front of the instance variable name and could be referenced eleswhere.

Where can an instance variable be used?
It can be used within the class.


=end

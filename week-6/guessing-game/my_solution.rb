# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: When a guessing game is created it should take in an integer.  It should also take in
#         an integer when a guess is made
# Output: When a guess is made it should return :high, :low, or :correct.  If solved is called
#          it should return a boolean based on the last guess
# Steps:
=begin
1) Check if the input is an integer
2) IF it is not an integer raise an error
    ELSE store the answer and set solved = false
3) when guess is called with an integer compare it with answer and return high, low, or correct
    IF correct also set solved = true
    
=end


# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
    if answer.is_a?(Integer) && answer >= 0
      @answer=answer
      @last_result=false
    else  
      raise ArgumentError.new("This is not a leagal number")
    end
  end
  
  def guess(input)
    @last_result=false
    case
      when input > @answer
        return :high
      when input < @answer
        return :low
      when input == @answer
        @last_result=true
        return :correct
    end
  end
    
  def solved?
    @last_result
  end

  # Make sure you define the other required methods, too
end
=end




# Refactored Solution

class GuessingGame
  def initialize(answer)
    if answer.is_a?(Integer) && answer >= 0
      @answer=answer
      @last_result=false
    else  
      raise ArgumentError.new("This is not a leagal number")
    end
  end
  
  def guess(input)
    @last_result=false
    case
      when input > @answer
        return :high
      when input < @answer
        return :low
      else
        @last_result=true
        return :correct
    end
  end
    
  def solved?
    @last_result
  end

end



# Reflection
=begin
-How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
instance variables are atributes of the object.  So for instance my car is silver and my wife's is red.  Whlle they
are both cars, if I'm asking for the color of my car it should give me silver.


-When should you use instance variables? What do they do for you?
Instance variables should describe the object and what it does.  They can be used by the methods in the class.

-Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
Flow control give the program directions to make choices based on input.  It can compare two results and figure you can have
the program diverge based on that result.

-Why do you think this code requires you to return symbols? What are the benefits of using symbols?
Because this game is iterative the number of guesses can get large.  When it has to create "low" and "high"
it can get bogged down.  :low and :high become indexed in a symbol table so it only ever creates one instance
of the value, it never needs to change.


=end
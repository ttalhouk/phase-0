#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  def initialize
    @name = "Talal"
  end
  attr_reader :name
end


class Greetings
  def initialize
    @person = NameData.new
  end
  def hello
    puts "Hello "+@person.name+", nice to see you!"
  end

end
greet = Greetings.new
greet.hello


# Reflection
=begin
What are these methods doing?
-The methods in release 1 are returning or setting the instance variables for the profile class.

How are they modifying or returning the value of instance variables?
-When the what_is methods are called all that is done is returning the instance variable at the time.
When the change methods are called with arguments passed in, the instance variable is overwritten.


What changed between the last release and this release?
-Added the attr_reader for age

What was replaced?
-what_is_age method removed

Is this code simpler than the last?
-Yes.  If an attribute is only needed to be read they you can simplify it with the attr_reader

What changed between the last release and this release?
-added attr_writer for age

What was replaced?
-this replaced change_age

Is this code simpler than the last?
-Yes this allows the user to read or write/set the age from outside the methods.

What is a reader method?
-Reader method can only return information but not overwritten

What is a writer method?
-Writer can only be written to but not accessed

What do the attr methods do for you?
-attr methods simplify the reusable information within a class.  

Should you always use an accessor to cover your bases? Why or why not?
-No.  Sometimes you don't want to give the program access to overwrite information or need
to keep some information from being read but need to make changes in the background.

What is confusing to you about these methods?
- The syntax for writing these is not entirely intuitive but with practice I'm sure
it will make more sense as we go along.

=end
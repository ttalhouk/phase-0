puts "Hi there, please tell me your first name..."
first_name=gets.chomp
puts "Thanks, what is your middle name?"
middle_name=gets.chomp
puts "And your last name?"
last_name=gets.chomp

puts "Nice to meet you "+first_name+" "+middle_name+" "+last_name+"!"

puts "What is your favorite number "+first_name
fav_num=gets
puts "That\'s good but "+(fav_num.to_i+1).to_s+" is one bigger!"

=begin
https://github.com/ttalhouk/phase-0/blob/master/week-4/address/my_solution.rb
https://github.com/ttalhouk/phase-0/blob/master/week-4/math/my_solution.rb

How do you define a local variable?
-a local variable is defiled with a name (lower case) with an "=" then the variable

How do you define a method?
-to define a method you use the syntax def name (arguments).  a method is repeatable bit of code
that can take arguments to do something with it and return a value.

What is the difference between a local variable and a method?
-A local variable is just a holder of a value.  A method can do some code, such as printing out things or doing math to return a value

How do you run a ruby program from the command line?

-To run a ruby program from the command line us the command ruby filename.rb

How do you run an RSpec file from the command line?
-Similar to ruby except it is rspec filename.rb

What was confusing about this material? What made sense?
-So far it is straight forward, though rspec is new to me.  I see we will be learning this later as a way to check the code.

=end
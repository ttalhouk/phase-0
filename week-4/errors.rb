# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [2] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
# while true
#  puts "What's there to hate about #{thing}?"
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#    -errors.rb
# 2. What is the line number where the error occurs?
#    - line 170
# 3. What is the type of error message?
#    -syntax error
# 4. What additional information does the interpreter provide about this type of error?
#    -unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
#    -line 16
# 6. Why did the interpreter give you this error?
#    -there is no end to the while

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
#   -line 35
# 2. What is the type of error message?
#   -name error
# 3. What additional information does the interpreter provide about this type of error?
#   -undefined local variable or method `south_park' for main:Object (NameError)
# 4. Where is the error in the code?
#   -line 35
# 5. Why did the interpreter give you this error?
#   -south_park is not a method anywhere and there is no = to make it a local variable so it doesn't know what it is.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#   -Line 50
# 2. What is the type of error message?
#   -no method error
# 3. What additional information does the interpreter provide about this type of error?
#   -undefined method `cartman' for main:Object (NoMethodError)
# 4. Where is the error in the code?
#   -line 50
# 5. Why did the interpreter give you this error?
#   -due to the () it knows cartman should be a method, but there is no def cartman anywhere in the code.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#   -line 65
# 2. What is the type of error message?
#   -arugment error
# 3. What additional information does the interpreter provide about this type of error?
#   - wrong number of arguments (1 for 0) (ArgumentError) from errors.rb:69:in `<main>'
# 4. Where is the error in the code?
#   -line 69
# 5. Why did the interpreter give you this error?
#   -cartmans_phrase is trying to pass the string 'I hate kyle' to the method but the method doesn't take any arguments
#    so it doesn't know what to do with it.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

#cartman_says

# 1. What is the line number where the error occurs?
#   -line 85
# 2. What is the type of error message?
#   -argument error
# 3. What additional information does the interpreter provide about this type of error?
#   -wrong number of arguments (0 for 1) (ArgumentError) from errors.rb:89:in `<main>'
# 4. Where is the error in the code?
#   - line 89
# 5. Why did the interpreter give you this error?
#   - method cartman_says is looking for an argument, but when it is called on line 89 no argument is passed to offensive_message


# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#   -line 105
# 2. What is the type of error message?
#   -Argument error
# 3. What additional information does the interpreter provide about this type of error?
#   -in `cartmans_lie': wrong number of arguments (1 for 2) from errors.rb:109:in `<main>'
# 4. Where is the error in the code?
#   -line 109
# 5. Why did the interpreter give you this error?
#   -similar to the previous error but this time we passed one argment and it is looking for 2

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#   -line 124
# 2. What is the type of error message?
#   -Type error
# 3. What additional information does the interpreter provide about this type of error?
#   -in `*': String can't be coerced into Fixnum from errors.rb:124:in `<main>'
# 4. Where is the error in the code?
#   -line 124
# 5. Why did the interpreter give you this error?
#   -it is trying to multiply integer 5 by a string which doesn't make sense.  Its looking for another number instead of a string.

# --- error -------------------------------------------------------

amount_of_kfc_left = 0/20


# 1. What is the line number where the error occurs?
#   -line 139
# 2. What is the type of error message?
#   -Zero division error
# 3. What additional information does the interpreter provide about this type of error?
#   -in `/': divided by 0 from errors.rb:139:in `<main>'
# 4. Where is the error in the code?
#   -line 139
# 5. Why did the interpreter give you this error?
#   -dividing by 0 can not be defined

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#   -line 155
# 2. What is the type of error message?
#   -load error
# 3. What additional information does the interpreter provide about this type of error?
#   -in `require_relative': cannot load such file -- /home/ubuntu/workspace/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
#   -line 155
# 5. Why did the interpreter give you this error?
#   -this is calling for a file cartmans_essay.md in the working directory but that file does not exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin
Which error was the most difficult to read?
-in `*': String can't be coerced into Fixnum from errors.rb:124:in `<main>' was the most difficult to read, but 
it was pretty obvious what the issue was 
  
How did you figure out what the issue with the error was?
-it said it was a type error and seeing the types were not the same made it easy to see
plus it was easy to spot based on the line number.

Were you able to determine why each error message happened based on the code? 
-yes I was able to determine each of them in this example.  The interperter gives fairly
clear information on the issue.

When you encounter errors in your future code, what process will you follow to help you debug?
-I think the first thing to do is look at the line numbers.  If it's not an unexpected end or somthing like that
then that should be where the error is.  The error type is a good clue as well. Tracing the variables will likely 
lead to the issue

=end
# Simple Substrings

# I worked on this challenge [by myself, with:Denny].


# Your Solution Below
def welcome(address)
#from page 160 of Well Grounded Rubiest
#check for CA in address and if found return welcome message
  if /CA/.match(address)
    return "Welcome to California"
  else
#else return default message
    return "You should move to California"
  end
end

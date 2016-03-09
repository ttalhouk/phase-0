# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)

  value=[]
  source.each do |e|
    e=e.to_s  # must be string to do include check
    if e.include? (thing_to_find)
      value.push e
    end
  end
  return value

end

def my_hash_finding_method(source, thing_to_find)
  
=begin  
  find=[]
  source.each do |key,value|
    if value==thing_to_find
      find.push key
    end
  end
  return find
=end


  return source.select {|key,value| value==thing_to_find}.keys


end

# Identify and describe the Ruby method(s) you implemented.
# Found include in the ruby docs. It searches the string for the argument passed and returns a true or false 
#
# Each when used on a hash can pull the key and value properties and iterate over them.  An array can then be made from the keys.
# .select was in the ruby docs which returns the has value pairs that match the value then .keys will take that an turn it into an array.
# Leap Years

# I worked on this challenge [by myself, with: Denny ].


# Your Solution Below

def leap_year?(year)
  # check if not divisible by 4
  if year%4 != 0
    return false
  # then check if it is divisible by 100 and not 400
  elsif year%100 == 0 && year%400 !=0
    return false
  else
  #if divisible by 400 then
    return true
  end
end
    
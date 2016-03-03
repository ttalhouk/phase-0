# Calculate a Grade

# I worked on this challenge [by myself, with: Denny ].


# Your Solution Below
def get_grade(average)
  case
    when average >=90
      return "A"
    when average >=80
      return "B"
    when average >=70
      return "C"
    when average >=60
      return "D"
    else
      return "F"
  end
end
# Introduction to Inheritance

# I worked on this challenge [by myself, with: Christyn Budzyna].


# Pseudocode
=begin
Global Cohort Attributes
-students []
-name
-p0_start_date
-immersive_start_date
-graduation_date
-email_list
-num_of_students

Local Cohort Attributes
-city
-students
-email_list
-num_of_students

Global Cohort Methods
add_student
pushing a key value pair to the students array 


remove_student
Deleting a key value pair from the students array

currently_in_phase
Check the current time against start date 
IF less than nine weeks past start date, Phase 0
ELSIF nine to twelve weeks past start date, Phase 1
ELSIF twelve to fifteen weeks past start date, Phase 2
ELSIF fifteen to eighteen weeks past start date,  Phase 3 
else graduated

graduated? 
Check current time against graduated
Return boolean true or false 

Local Cohort Methods


=end



# Initial Solution

=begin

class GlobalCohort
  def initialize(name, p0_start_date)
    @name = name
    @p0_start_date = p0_start_date
    @students = []
    @email_list = []
    @graduated = false
  end

  attr_reader(:name, :students)
  def add_student (student_name, email)
    @students.push({student_name => email})
    
  end
  def remove_student(student_name)
    @students.each_with_index do |hash,i|
      if hash.has_key?(student_name)
        @students.delete_at(i)
      end
    end
  end
  
  def currently_in_phase
    require 'date'
    if Date.today.yday > @p0_start_date.yday && Date.today.yday < @p0_start_date.yday+63
      puts "Phase 0" 
    elsif Date.today.yday < @p0_start_date.yday+84
      puts "Phase 1"
    elsif Date.today.yday < @p0_start_date.yday+105
      puts "Phase 2"
     elsif Date.today.yday < @p0_start_date.yday+126
      puts "Phase 3"
     else @graduated = true
      puts "Graduated"
    end
  end
  
  def graduated?
    if @graduated == true
      puts true
      else
      puts false
    end
  end
  
end

class LocalCohort < GlobalCohort
  def city 
  @city = city
  end

  attr_accessor(:city)

end

=end

# Refactored Solution

class GlobalCohort
  def initialize(name, p0_start_date)
    @name = name
    @p0_start_date = p0_start_date
    @students = []
    @email_list = []
    @graduated = false
  end

  attr_reader(:name, :students)
  def add_student (student_name, email)
    @students.push({student_name => email})
  end
  
  def remove_student(student_name)
    @students.each_with_index do |hash,i|
      if hash.has_key?(student_name)
        @students.delete_at(i)
      end
    end
  end
  
  def currently_in_phase
    require 'date'
    if Date.today.yday > @p0_start_date.yday && Date.today.yday < @p0_start_date.yday+63
      puts "Phase 0" 
    elsif Date.today.yday < @p0_start_date.yday+84
      puts "Phase 1"
    elsif Date.today.yday < @p0_start_date.yday+105
      puts "Phase 2"
     elsif Date.today.yday < @p0_start_date.yday+126
      puts "Phase 3"
     else @graduated = true
      puts "Graduated"
    end
  end
  
  def graduated?
    return @graduated
  end
  
end

class LocalCohort < GlobalCohort
  def city 
  @city = city
  end

  attr_accessor(:city)

end

#skippers=GlobalCohort.new("skippers", Time.new(2016,1,1))
chiSkippers=LocalCohort.new("Chicago Skippers", Time.new(2016,1,1))
#chiSkippers.add_student(Bob)
puts chiSkippers.name
chiSkippers.city = "Chicago"
puts chiSkippers.city
chiSkippers.add_student("bob","bob@gmail.com")
chiSkippers.add_student("jill","jill@gmail.com")
puts chiSkippers.students
chiSkippers.remove_student("bob")
puts chiSkippers.students
puts chiSkippers.graduated?



# Reflection

# What concepts did you review in this challenge?
# -We reviewed the concept of inheritance of classes and accessing information from outside the class and
# within.  We also worked on some iteration and modifying arrays and hashes.

# What is still confusing to you about Ruby?
# -Ruby is pretty straight forward but initializing subclasses was still a bit of a challenge as we tried
# to give the local cohort a city as an argument but then it lost the initialized information from the 
# GlobalCohort class.

# What are you going to study to get more prepared for Phase 1?
# -I'd like to figure out how to have subclasses have their own initialization.
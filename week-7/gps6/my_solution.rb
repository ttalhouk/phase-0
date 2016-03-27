# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relitive looks for a file named with the 'string' relitive to the file calling it.
# require looks through your load path (configurable) for the file (assumes the file is in the load path)
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # initialize creates instance variables when the new class is created
 

  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
  end
  # calls methods predicted_deaths and speed_of_spread and passes the appropriate instance variables as arguments
  
  private  #Private is what you set for what you want to change within the class but can't access it from outside. Wouldn't be able to call virus effects from outside of the class. 

  def predicted_deaths #(population_density, population, state)
    # predicted deaths is solely based on population density
    #case = @population_density 
    #when >= 200
    #   number_of_deaths = (@population * 0.4).floor
    #when >= 150
    #   number_of_deaths = (@population * 0.3).floor
    #when >= 100
    #  number_of_deaths = (@population * 0.2).floor
    #when >= 50
    #  number_of_deaths = (@population * 0.1).floor
    #else 
    # number_of_deaths = (@population * 0.05).floor


    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # checks population_density and assigns the appropriate multiplication factor to calculate number of deaths using if/elsif/else statements
  # prints the appropriate string using those values 

  def speed_of_spread # (population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    #speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end
  # checks population_density and assigns the appropriate multiplication factor to calculate the speed of spread using if/elsif/else statements
  # prints the appropriate string using those values 

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


STATE_DATA.each {|key, value| VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population]).virus_effects}

#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects

# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# - one used the => syntax to define the key/value pairs the other : to create a symbol for the key and seperate it from the value.


# What does require_relative do? How is it different from require?
# - require_relative searches for the file relitive to the file it is called from and loads it in for use by the program.
# require is similar but checks the load path for the file.


# What are some ways to iterate through a hash?
# - one can use the each method, for hashes you can iterate through the key or values as well if that is all you need.


# When refactoring virus_effects, what stood out to you about the variables, if anything?
# - Since the varialbes are being passed were instance variables there was no need to pass them through arguments.  The 
# if statements could be replaced by a case statement but this was not really much cleaner code wise.


# What concept did you most solidify in this challenge?
# - Creating objects even temporarily was my big take away from this challenge.  I'd allways created a new class by setting
# it equal to a variable name but if we are only interested in the output it can be called temporarily.
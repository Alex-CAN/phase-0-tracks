# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
  attr_reader :state, :population, :population_density

# initialization method declares instance variables for class

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# calls two methods predict_deaths and speed_of_spread
  
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  
  private

# takes 3 arguments density, population, state. uses if statement to see how dense the pop is.
# calculates # of deaths using population. returns string with info on state and deathtoll.
 
    # predicted deaths is solely based on population density
  def death_multiplier
    if population_density >= 200
      0.4
    elsif population_density >= 150
       0.3
    elsif population_density >= 100
      0.2
    elsif population_density >= 50
      0.1
    else
      0.05
    end 
  end  

   def predicted_deaths
    deaths =number_of_deaths(death_multiplier)
    print "#{state} will lose #{deaths} people in this outbreak"

  end

  def number_of_deaths(multiplier)
    (population * multiplier).floor
  end


# takes two arguments uses pop density to decided speed of spread. returns string with info on state and speed of spread.
#in months
  def speed_of_spread #in months

    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    
    if population_density >= 200
      speed = 0.5
    elsif population_density >= 150
      speed = 1
    elsif population_density >= 100
      speed = 1.5
    elsif population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


STATE_DATA.each do |s, info| 
  VirusPredictor.new(s, info[:population_density], info[:population]).virus_effects
end

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section

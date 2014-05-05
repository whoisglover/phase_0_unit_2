# U2.W5: Virus Predictor

# I worked on this challenge [by myself, with: ].

# EXPLANATION OF require_relative
# Tells the program to load a file with the given name. Returns true if load successful, false is not.
# If no extension is given it tries to add .rb or .so.  If an .rb file it is loaded as a source file. 
# .so, .o, .dll files are loaded as shared library Ruby extension 
# 
 require_relative 'state_data'

class VirusPredictor

  #initialize method takes in input and sets instance variables
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  #private

  #virus_effects passes the necessary instance variables to predicted_deaths and speed_of_spread, then displays the results
  #this is acting as a driver for the program (aka the main)
  def virus_effects  #HINT: What is the SCOPE of instance variables? -The variables are global to the class so don't need to be passed
    predicted_deaths
    speed_of_spread
  end
  def all_states
    STATE_DATA.each do |key, data|
         @state = key
         @population_density = data[:population_density]
         @population = data[:population]
         virus_effects 
    end
  end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method
  #private means that these methods can only be called by other internal methods of the class.  This is why we have the
  # virus_effects method to call them.  If VirusPredictor.predicted_deaths were called it would result in an error


  #predicted deaths prints how many people are predicted to die by multiplying the population times a constant that is 
  # greater for higher population densities.  Floor is used to round down to the nearest person (avoid fraction answers)
  # It seems unnecessary to pass in the state here, printing state name and results could be done in virus_effects
  def predicted_deaths
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

  #speed_of spread prints how many months it will take for the disease to spread across the state
  # higher population density means smaller time period of spread
  def speed_of_spread
    speed = 0.0
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end

  



end


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#all_states
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.all_states

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
# alaska.virus_effects
=begin
What parts of your strategy worked? What problems did you face?
  - My strategy to use an each loop for the all_states method worked very nicely.  I was surpised to see the second
    variable contained all of the data but once I messed with pulling the data with the name of what I wanted as the index
    it made a lot of sense.
What questions did you have while coding? What resources did you find to help you answer them?
  - The only question I had was exactly what the require_relative was doing and how, I used the ruby-docs
    website to figure this out
What concepts are you having trouble with, or did you just figure something out? If so, what?
  - I'm not having trouble with any of the concepts.  Most of this exercise was a review of what I've learned about object oriented progams
Did you learn any new skills or tricks?
  - Nope no new skills or tricks 
How confident are you with each of the Learning Competencies?
  - I feel very confident with the learning Competencies, and in general I feel very confident with the level of ruby we are coding this week
Which parts of the challenge did you enjoy?
  - I enjoyed explaining each part of the program it helped me to understand what was going on better
Which parts of the challenge did you find tedious?
  - I didnt find any of the challenge tedious 
=end
# U2.W4: Homework Cheater!


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: title, topic, date, thesis_statment, pronoun
# Output: Short essay describing the topic and uses all the provided inputs.
# Steps: Store generic responses in variables for person (male/female), place, or thing and then use case statement depeneding on which type of pronoun is provided


# 3. Initial Solution
ideal1 = "My Essay on Daniel Boone. Daniel boone was an important person in 1734.  He did a lot.  He is a figure that should be featured in any history class that focues on the time period of 1734. Daniel Boone was an American pioneer, explorer, and frontiersman whose frontier exploits made him one of the first folk heroes of the United States. His story should never be forgotten."
ideal2 = "Soap is an amazing thing.  It was first invented in 1200.  It's effects on history are very interesting. Although now thought of as a regular household item, at one point soap was a modern miracle and changed the way our society interacts."
ideal3 = "My Essay on Hawaii. Hawaii is an amazing place.  Especially in the year 1959. I hope to visit someday.  Hawaii should be on everyone's bucket list to visit. Although it has a tumultuous history Hawaii deserves to be a part of the United States."


def essay_writer(title, topic, date, thesis_statment, pronoun)
	male =topic.capitalize+ " was an important person in #{date}.  He did a lot.  He is a figure that should be featured in any history class that focues on the time period of #{date}. #{thesis_statment} His story should never be forgotten."
	female = topic.capitalize+" was an important person in #{date}.  She did a lot.  She is a figure that should be featured in any history class that focues on the time period of #{date}. #{thesis_statment} Her story should never be forgotten."
	place =  topic.capitalize+" is an amazing place.  Especially in the year #{date}. I hope to visit someday.  #{topic} should be on everyone's bucket list to visit. #{thesis_statment}"
	thing = topic.capitalize+" is an amazing thing.  It was first invented in #{date}.  It's effects on history are very interesting. #{thesis_statment}"
	puts title

	case pronoun
	when "male"
		puts male
	when "female"
		puts female
	when "place"
		puts place
	when "thing"
		puts thing
	end


end

essay_writer("My Essay on Soap", "soap", 1200, "Although now thought of as a regular household item, at one point soap was a modern miracle and changed the way our society interacts.", "thing")
essay_writer("My Essay on Daniel Boone", "Daniel Boone", 1734, "Daniel Boone was an American pioneer, explorer, and frontiersman whose frontier exploits made him one of the first folk heroes of the United States.", "male")
essay_writer("My Essay on Hawaii", "Hawaii", 1959, "Although it has a tumultuous history Hawaii deserves to be a part of the United States.", "place")


# 4. Refactored Solution

#To refactor this code and make it more D.R.Y. I am going to remove the first instance variables for male, female, place, and thing and put the printing directly into the case statement.  This will
#optimize my code by not creating a template for every scenario every time but instead only print out what the pronoun says should be printed.
def essay_writer(title, topic, date, thesis_statment, pronoun)
	puts title
	case pronoun
	when "male"
		puts topic.capitalize+ " was an important person in #{date}.  He did a lot.  He is a figure that should be featured in any history class that focues on the time period of #{date}. #{thesis_statment} His story should never be forgotten."
	when "female"
		puts topic.capitalize+" was an important person in #{date}.  She did a lot.  She is a figure that should be featured in any history class that focues on the time period of #{date}. #{thesis_statment} Her story should never be forgotten."
	when "place"
		puts topic.capitalize+" is an amazing place.  Especially in the year #{date}. I hope to visit someday.  #{topic} should be on everyone's bucket list to visit. #{thesis_statment}"
	when "thing"
		puts topic.capitalize+" is an amazing thing.  It was first invented in #{date}.  It's effects on history are very interesting. #{thesis_statment}"
	end


end
puts
puts "REFACTORED:"

essay_writer("My Essay on Hawaii", "Hawaii", 1959, "Although it has a tumultuous history Hawaii deserves to be a part of the United States.", "place")

# 1. DRIVER TESTS GO BELOW THIS LINE

describe 'essay_writer'  do
	it "is defined as a method" do 
		defined?(essay_writer).should eq 'method'
	end
	
	it "requires 5 arguments" do
		method(:essay_writer).arity.should eq 5
	end 

end




# 5. Reflection 
=begin 
I found this challenge a little confusing.  The instructions did not make sense at first, but after multiple re-reading I think I finally understood what they wanted.
I liked using the case statement as I think it keeps the code very D.R.Y.  Although it was hard to create such generic statements for pronouns such as place or thing I think
my statements are amiguous enough to properly handle almost any input.  After completing this challenge it is clear that I need more instruction on creating driver tests.
Hopefully this week I can find some time to brush up on driver testing ruby.
=end


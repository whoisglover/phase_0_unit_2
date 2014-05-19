# U2.W6: Drawer Debugger


# I worked on this challenge with Danny Glover and Alec Ashford


# 2. Original Code

class Drawer

    attr_accessor :contents

# Are there any more methods needed in this class?

    def initialize
        @contents = []
        @open = true
    end

    def open
        @open = true
    end

    def close
        @open = false
    end 

    def add_item(item)
        @contents << item
    end

    def remove_item(item = nil)
        #pop removes the last item of the array and deletes it
        if item == nil
            @contents.pop
        else
            return @contents.delete(item) 
            
        end
    end

    def dump
        puts "Your drawer is empty."
        @contents = []
    end

    def view_contents
        puts "The drawer contains:"
        @contents.each {|silverware| puts "- " + silverware.type }
    end
end

class Silverware
    attr_reader :type

# Are there any more methods needed in this class?

    def initialize(type, clean = true)
        @type = type
        @clean = clean
    end

    def eat
        puts "eating with the #{type}" 
        return @clean = false 
    end
    
    def clean_silverware
        @clean = true
    end
end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
 silverware_drawer.add_item(knife1) 
 silverware_drawer.add_item(Silverware.new("spoon"))
 silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.add_item(Silverware.new("fork"))

silverware_drawer.view_contents #What should this return?


fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...

 fork.eat

#BONUS SECTION
# puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE

p silverware_drawer.dump == []
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork2"))
fork2 = silverware_drawer.remove_item(fork2) 
p fork2.type == "fork2"

# 5. Reflection 
=begin
* What parts of your strategy worked? What problems did you face?    
Alec and I took quite a bit of time to go line by line to understand what the original code was doing.  This really helped the rest of the challenge move smoothly.
We were using the website repl to run our code as we worked and it was a bit buggy which originally made us think we were doing some things wrong when in fact we had them correct.
* What questions did you have while coding? What resources did you find to help you answer them?  
Alec and I were a little confused by the ambiguity of the assignment and not sure what some of the goals were, for instance we didnt know what the remove method should do if no items were passed to it.  
    Eventually we just used our best judgement on things like this.  
* What concepts are you having trouble with, or did you just figure something out? If so, what?  
I just figured out the attr_reader vs attr_accessor methodology and I have a good idea of what each do, I think of it as being similar
    to file permissions (read/write).
* Did you learn any new skills or tricks?
I didnt learn any new skills or tricks but I was able to teach Alec about setting a method's parameters to null in the declaration to let it accept no arguments.
* How confident are you with each of the Learning Competencies? 
I feel very confident with each of the learning Competencies.
* Which parts of the challenge did you enjoy?
I enjoyed working with Alec he was really nice and I think we are very similar in our personalities as well as coding style.
* Which parts of the challenge did you find tedious?
Testing the code became slightly tedious due to the problems we were having with the coding website we were using not working properly.
=end
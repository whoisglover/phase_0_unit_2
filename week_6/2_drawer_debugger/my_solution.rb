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
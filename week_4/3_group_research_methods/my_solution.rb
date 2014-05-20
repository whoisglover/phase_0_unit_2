# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  # Your code here!
end

def my_hash_finding_method(source, thing_to_find)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#

# Person 2
def my_array_modification_method(source, thing_to_modify)
  # Your code here!
end

def my_hash_modification_method(source, thing_to_modify)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 3
def my_array_sorting_method(source)
  # Your code here!
end

def my_hash_sorting_method(source)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 4
def my_array_deletion_method(source, thing_to_delete)
  	source.each do |x|
  		#puts x
  		if x.to_s.include? "#{thing_to_delete}"
  			source.delete(x)
  		end
  	end
end

def my_hash_deletion_method(source, thing_to_delete)
	source.each_key do |key|
  		#puts x
  		if key.to_s.include? "#{thing_to_delete}"
  			source.delete(key)
  		end
  	end
  #Your code here!
end


# Identify and describe the ruby method you implemented. 
# For each of the deletion method I used three built in methods: an each loop, the .include? method, and the .delete method.
# Array: I looped through each spot in the array and checked if the value stored there contained the 'thing_to_delete' by using the string method .include?
# If this was true then that item needed to be deleted so I called the .delete method on the source array and used the current value of the array index as the input
# .to_s was used on each value to account for digits.

# Hash delete: I used almost the exact same logic as the array delete except changed the loop to .each_key to iterate through each of the keys of the hash. If the key
# included the item I was looking to delete (checked by if statement with .include?) I called .delete on the source hash structure and used the current key as the input.


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

# p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
# p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
# p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
# p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
# p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
# p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# # This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 3, "pets", "but", "I", "only", 2 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 6, "Hoobie" => 3, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0, "Ditto" => 3}


# Reflect!
=begin
# What parts of your strategy worked? What problems did you face?
		My strategy from the start was to use an each loop and check each index or hash key to see if it matched what I wanted.  In the end this turned out
		well and worked efficiently. 
What questions did you have while coding? What resources did you find to help you answer them?
		Ruby-docs.org has become my best friend while researching built in methods.  I knew Ruby had some sort of include method and I was able to find all the 
		detail I needed there.  It also taught me how to use the .delete method.  Both of these were key in making my part work (person 4).
What concepts are you having trouble with, or did you just figure something out? If so, what?
		I just figured out the .delete method for the first time.  It seems very straight forward and also quite powerful.  I love how ruby takes care of resizing arrays.
		I am used to dealing with C code where array sizes are fixed.
Did you learn any new skills or tricks?
		I learned the methods .include and .delete.  I think I will be using both of these quite often in the future.
How confident are you with each of the Learning Competencies?
		I am completely confident with the Learning Competencies.
Which parts of the challenge did you enjoy?
		I enjoyed the challenge as a whole. It didn't seem to difficult and the answer came to me quickly.
Which parts of the challenge did you find tedious?
		No parts were tedious.
# What did you learn about researching and explaining your research to others?
		I learned that I can explain things to myself in my head much easier than trying to write them for others.  I need some more practice explaining what I'm thinking
		and what the code is doing.  I also learned that it helps to break things into manageable steps to explain.  Explain one small part then move on the next one.  I hope 
		my code makes sense to my team and I guess I will find out thru reviews.
=end
# 
# 
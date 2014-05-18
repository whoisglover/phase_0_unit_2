# # U2.W4: Cipher Challenge

# =begin
# 1.9.3-p448 :001 > input="danny glover"
#  => "danny glover" 
# 1.9.3-p448 :002 > input.split("")
#  => ["d", "a", "n", "n", "y", " ", "g", "l", "o", "v", "e", "r"] 
 
# 1.9.3-p448 :014 > array=[0,1,2,3,4,5,6,7]
#  => [0, 1, 2, 3, 4, 5, 6, 7] 
# 1.9.3-p448 :015 > array[-3]
#  => 5 
 
 
# =end

# # I worked on this challenge: Danny Glover + Scott Jason



# # 1. Solution
# # Write your comments on what each thing is doing. 
# # If you have difficulty, go into IRB and play with the methods.



# def north_korean_cipher(coded_message)
#   input = coded_message.downcase.split("") # Check out this method in IRB to see 
# #   how it works! Also refer to the ruby docs. The downcase method is 
# # turning everything to lowercase and the split method is putting each character
# # of the string into an array.


#    # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#  # the best data structure for this problem? What are the pros and cons of hashes?
 
# #  One way we could do this is to create an array that has each letter in the alaphabet and which 
# #  letter it corresponds to using index bracket notation?
 
# #  So instead of listing what every letter equals, we can just set "e" =>  cipherArray[0] where
# #  cipherArray = ["a", "b"....
# #  we
 
# #  hash = [ insert_any_letter => shifts_4_spaces]
 
# #  array = ['a', 'b', 'c', 'd', 'e', 'f','g','h'] 
# #  for(i=0; i<array.lenght; i++){
# #     array[i] = array[i+4]
# #  }
 
# #  array.each do |x|
# #      cipher = array[x-4]
# #      return cipher
# #  end
 
#   decoded_sentence = []
#   cipher = {"e" => "a", 
#             "f" => "b", 
#             "g" => "c", 
#             "h" => "d", 
#             "i" => "e", 
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
            
#   input.each do |x| # What is #each doing here? looping over the input. (looping over each character of the array, since we "split each 
# #   character of the input string into single, array values.
    
#   found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? found_match is acting
# #   as a flag to let us know if we've found what we're looking for. It returns a boolean value. We set it to false to ensure that we don't get a true return
# # before we even start looking.  IE We only return true if a match is found (that's the point of this variable)
  
  
#     cipher.each_key do |y| # What is #each_key doing here? Iterating over the hash key.
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#     #   It's comparing (x) where x is input and (y) where y is the value of what the input / key corresponds to in the hash.
#         puts "I am comparing x and y. X is #{x} and Y is #{y}."
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here? Because found_match = true. We decoded it.
        
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
#     #   it's checking to see if there's an input of any of these characters (or).
#         decoded_sentence << " " #Here, we replace any of those characters with a space.
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? creates an array from 0 to 9
#     #   ("a".."z").to_a
#         decoded_sentence << x
#         found_match = true
#         break
#       end 
#     end
#     if not found_match  # What is this looking for? If there wasnt a match found.
#     #just adds the character itself to decoded array.
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
 
#   if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. 
#   # checking to see if we have any digits.
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
#     # substitues those matched digits with an integer / 100.
#   end  
#   return decoded_sentence # What is this returning?     
#     #the deciphered string (the strings intended values).
# end






# Initial Solution

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") 
    decoded_sentence = []
    cipher = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", 
    "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"] 
    cipher_intended = []
    cipher.each_with_index {|item, index|
        cipher_intended[index] = cipher[index-4]
     #   puts cipher_intended[index]
    }
    
    
    input.each do |x| 
        found_match = false   
        cipher.each_with_index do |y, index|
            if x == y
               # puts "I am comparing x and y. X is #{x} and Y is #{y}."
                decoded_sentence << cipher_intended[index]
                found_match = true
                break  
            elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" 
                decoded_sentence << " " 
                found_match = true
                break
            elsif (0..9).to_a.include?(x) #
                decoded_sentence << x
                found_match = true
                break
            end
        end
        if not found_match  
            decoded_sentence << x
        end
    end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/)
     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } 
  end  
  
  return decoded_sentence 
end


# Your Refactored Solution


# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

# Reflection
=begin
What parts of your strategy worked? What problems did you face?
      It took Scott and I a lot of brain storming and even more tinkering to figure out how to correctly do the shifting of letters in an array.
      Our real initial problem was figuring out what exactly the code was doing. By walking through it together line by line we started to have a 
      better understanding of what was happening and how to recreate it.
What questions did you have while coding? What resources did you find to help you answer them?
      A major question was how to shift all the values of letters in an array.  The problem was if we did it in place some of the later ones wouldnt
      be able to reference the earlier ones to see what they originally were (theyd already be modified).  Some research produced the .each_with_index
      method.  This allowed us to create a second array and utilize the index of the original to fill up the second.  I'm not sure im explaining it well
      but hopefully the code speaks for itself.
What concepts are you having trouble with, or did you just figure something out? If so, what?
      We figured out to major things while doing this.  First the .each_with_index method I mentioned before.  This allowed us to access the proper letters in
      the modified cipher array.  Secondly, I learned that if you give a negative index for an array it just starts from the back and traverses forwards.  In 
      the languages I'm used to coding in (C++, Java) this would either give an out of bounds error or create nasty segmentation faults and memory leaks after compiling.
Did you learn any new skills or tricks?
      I learned the two tricks I just mentioned in the previous question.
How confident are you with each of the Learning Competencies?
      I feel very confident with each of the Learning Competencies.
Which parts of the challenge did you enjoy?
      First I really enjoyed pairing with Scott.  We were both a little frustrated by the challenge but working together really helped us get through it quickly
      and create a solid answer.  I also liked using the .each_with_index method because I was previously frustrated by the lack of power that comes with a looping
      method without an index.  I'm used to working in C++ and Java where the index is always key to whatever functionality you are creating with a loop.
Which parts of the challenge did you find tedious?
      I didn't really find anything tedious.  Not knowing what was going on at first was pretty frustrating but that just took time to work through the code line by line.
=end
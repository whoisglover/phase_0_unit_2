# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: ].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a #creates a new array called alphabet that holds each letter of the alphabet
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] #Hash variable cipher is created.  Zip creates a new array from each argument(alphabet letter)
                                                    # then places the value with it. Rotate shifts that value 4 places.
    spaces = ["@", "#", "$", "%", "^", "&", "*"]  # Stores all the special characters that should be spaces in an array
    
    original_sentence = sentence.downcase  #makes all uppercase letters lower case in sentence 
    encoded_sentence = []  #creates new array for encoded sentence
    original_sentence.each_char do |element|   #moves through each character of the original sentence
      if cipher.include?(element)             #if the cipher hash includes that character
        encoded_sentence << cipher[element]     #put in the value stored at that key (character) from the hash into encoded sentence
      elsif element == ' '              
        encoded_sentence << spaces.sample       #if there is a space insert a random special character, .sample chooses a random element from the array
      else 
        encoded_sentence << element   #no match found so just put the original into the encoded sentence
      end
     end
    
    return encoded_sentence.join  #make the array of characters into a single string
end


# Questions:
# 1. What is the .to_a method doing?
    #taking a list or range and making it into an array holding each item in the range
# 2. How does the rotate method work? What does it work on?
  #rotate works on arrays and returns a new array by rotating the array it is called on so the element at the input index is the first element in the new array
# 3. What is `each_char` doing?
  # it is looping through the string and putting each letter in the |element| variable
# 4. What does `sample` do?
  # sample chooses a random element from the array
# 5. Are there any other methods you want to understand better?
  # zip is still a little fuzzy for me
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
    # this code looks slightly better but not by much, I was pretty happy with my refactored code. This is better because it is fewer lines.  It is worse
    # because it is less readable, slightly confusing with the zip and rotate and hash all combined
# 7. Is this good code? What makes it good? What makes it bad?
    # this code is very D.R.Y. which is a good thing. Like I said before I think it's a little hard to see what is going on with line 15 but some well
    # thought out comments by the author would make this near perfect code


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
  -Strategy was to go line by line and use ruby-docs where I didn't understand anything.  This worked perfectly except for .zip.  The ruby-doc
  explanation couldve been better.
What questions did you have while coding? What resources did you find to help you answer them?
  - I didn't have many questions here but I also didn't originally know what .zip or .rotate did.  Rotate was pretty straight forward when I looked it 
  up but .zip  still isnt extremely clear.
What concepts are you having trouble with, or did you just figure something out? If so, what?
  - Like I said before I am having trouble with the .zip method.  Perhaps I will stop in on office hours this week to have it better explained.
Did you learn any new skills or tricks?
  - I learned the new methods rotate, and sample. Sample seems very interesting to me, I want to see how powerful it is soon.
How confident are you with each of the Learning Competencies?
  - I am pretty confident with the learning competencies but plan on utilizing office hours this week to resolve any outstanding questions I have.
Which parts of the challenge did you enjoy?
  - I enjoyed reviewing the code in general, it seems like it is really clean and good code which was refreshing from reviewing my own which is not so much.
Which parts of the challenge did you find tedious?


=end


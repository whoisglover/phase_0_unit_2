# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Rj Bernaldo
# 2) Danny Glover

 # This is the file you should end up editing. 
 
def bakery_num_old(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
  
  has_fave = false

  my_list.each_key do |k|
    if k == fav_food
      has_fave = true
      fav_food = k
    end
  end
  
  if has_fave == false
     raise ArgumentError.new("You can't make that food")
  else
      fav_food_qty = my_list.values_at(fav_food)[0] # my_list[fav_food]
      if num_of_people % fav_food_qty == 0
        num_of_food = num_of_people / fav_food_qty
        return "You need to make #{num_of_food} #{fav_food}(s)."
      else num_of_people % fav_food_qty != 0 #remove this code
        while num_of_people > 0
            if num_of_people / my_list["pie"] > 0
                pie_qty = num_of_people / my_list["pie"]
                num_of_people = num_of_people % my_list["pie"]
            elsif num_of_people / my_list["cake"] > 0
                cake_qty = num_of_people / my_list["cake"]
                num_of_people = num_of_people % my_list["cake"]
            else
                cookie_qty = num_of_people
                num_of_people = 0
            end
        end
            return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
        end
      end
end
 
# Define method that accepts a number of people and their favorite food
# Specify a hash that we can access to know how many people each food can feed
# Initialize how many of each food we have to zero
# Perform check to see if we have fav food in our list - use has_key? method
# If we have food, print out the number of cakes, pies, cookies
# Preference favorite food, use others to handle remaining people not fed
# If false, throw the argument that food cant be made

def bakery_num(num_of_people, fav_food)
  foods = {"pie" => 8, "cake" => 6, "cookie" => 1}
  qty = {"pie" => 0, "cake" => 0, "cookie" => 0}
  
  raise ArgumentError.new("You can't make that food") if !foods.has_key?(fav_food)

  if (num_of_people % foods[fav_food] == 0)
    return "You need to make #{num_of_people/foods[fav_food]} #{fav_food}(s)."
  else
    qty[fav_food] = num_of_people / foods[fav_food]
    leftover = num_of_people % foods[fav_food]
    
    foods.each do |key,value|
      if (key != fav_food)
        qty[key] = leftover / value
        leftover = leftover % value
      end
    end
  end
  return "You need to make #{qty['pie']} pie(s), #{qty['cake']} cake(s), and #{qty['cookie']} cookie(s)."
end

 

 

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 
 
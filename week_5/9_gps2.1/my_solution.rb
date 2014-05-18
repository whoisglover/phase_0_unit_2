# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: 






# Our Refactored Solution


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




#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie")  #== "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!




#  Reflection 




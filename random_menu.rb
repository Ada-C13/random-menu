# Random Menu
# Program to generate a menu of food items 

# Method to prompt user for list of words used during food generation.


food_components = {
    adjectives: ["gooey","glowing","melting","suspicious","sticky"],
    preparations: ["poached","boiled","sauteed","sliced","steamed"],
    foodstuffs: ["cookies","cake","peas","eggplant","unicorn"]
}

# Method adds more word options. 
# Does not accept repeated items.
def populate_array(list) 
  list.each do |category, items|
    puts "How many #{category} do you want to add?"
    amount_to_add = gets.strip.to_i
    amount_to_add.times do 
      print "Add to #{category} > "
      new_item = gets.strip.to_s
      while items.include? new_item
        print "You're trying to add a repeat. Give me a new #{category}. > "
        new_item = gets.strip.to_s
      end
      items << new_item

    end
  end
  return list
end

# Method prompts for user input until a valid y/n response is given.
# Returns the response in its boolean form.
def booleanize(input)  
  until input == true || input == false 
    case input 
      when "yes", "y"
        input = true 
      when "no", "n"
        input = false
      else
        print "Not a valid y/n response, try again. > "
        input = gets.strip.to_s.downcase
      end
    end
  return input
end

# Method generates new food item.
def generate_foods(unique, count, food_components)
  if unique #TO-DO : finish writing the unique generation function
    puts "UNIQUE MENU PLACEHOLDER!"
  else
    count.times do |i|
      print "#{i+1}) "
      new_food = ""
        food_components.each do |category, items|
          new_food << "#{values.sample} "
        end 
        puts "#{new_food}"
      end
  end
end


#Main program loop.
puts "HELLO, CHEF.\n\n"

print "Feed more words to the generator? y/n > "
feed_more = gets.strip.to_s.downcase

if booleanize(feed_more)
  food_components = populate_array(food_components) 
end

print "How many menu items do you want to generate? > "
menu_count = gets.strip.to_i

print "Should they be unique? y/n > "
unique = booleanize(gets.strip.to_s.downcase)

if unique 
  if food_components.all? { |category, items| items.length >= menu_count } #check to make sure there are enough words to generate requested uniques
    generate_foods(true, menu_count, food_components)
  else 
    puts "Sorry, you don't have enough words to generate that many unique items."
  end
else
  generate_foods(false, menu_count, food_components)
end



    

# Random Menu
# Program to generate a menu of food items 

# Method to prompt user for list of words used during food generation.
def populate_array(list)
  puts "How many #{list}?"
  size = gets.strip.to_i
  puts "Great, give me #{size} #{list}."
  list_of_things = []
  size.times do |i|
    print "#{i+1}) is... > "
    list_of_things << gets.strip.to_s
  end
  return list_of_things
end


def generate_foods(unique, menu_size, food_components)
  puts "**MENU**\n"
  if unique #TO-DO : finish writing the unique generation function
    used = []
    component_index = i.index(i.sample)
    while used.include? component_index
      component_index = i.index(i.sample)
    end
    used << component_index
    new_food << i[component_index]
    puts "UNIQUE!"
  else
    menu_size.times do |i|
      print "#{i+1}) "
      new_food = ""
        food_components.each do |i|
          new_food << "#{i.sample} "
        end 
        puts "#{new_food}"
      end

  end
end

used = []
component_index = i.index(i.sample)

while used.include? component_index
  component_index = i.index(i.sample)
end

used << component_index
new food << i[component_index]

puts "HELLO, CHEF."
puts "Let's figure out your menu using adjectives, preparations, and foodstuffs."
puts "First, tell me what we're working with."
puts "***"

food_components = []
food_components << populate_array("adjectives")
food_components << populate_array("preparations")
food_components << populate_array("foodstuffs")

puts "How many menu items do you want to generate?"
menu_size = gets.strip.to_i

puts "Should menu items be unique? (y/n) > "
ensure_unique = gets.strip.upcase


#main loop to generate foods 
if (ensure_unique == "Y") 
  if food_components.all? { |s| s.size >= menu_size } #check to make sure there are enough words to generate requested uniques
    generate_foods(true, menu_size, food_components)

  else 
    puts "Sorry, you don't have enough words to generate that many unique items."
  end
else 
  generate_foods(false, menu_size, food_components)
end


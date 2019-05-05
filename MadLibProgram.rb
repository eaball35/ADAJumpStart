# Create a MadLib program that accepts input from the user and outputs a completed MadLib
#   Use up to ten different parts of speech in order to fill in your MadLib.
#   Output should consist of a paragraph of output that has the user’s input substituted into the MadLib.
#   Your MadLib program should be unique to you


# User Inputs for Madlib program
puts "Enter a name:"
  ML_name = gets.chomp.to_s.capitalize
puts "Enter a number:"
  ML_age = gets.chomp.to_s.downcase
# need to turn age back unto an integer to subtract integer 5
  ML_youngerage = ML_age.to_i - 5
puts "Enter a state:"
  ML_state = gets.chomp.to_s.capitalize
puts "Enter a number:"
  ML_petnum = gets.chomp.to_s
puts "Enter an animal:"
  ML_pet = gets.chomp.to_s.downcase
puts "Enter name of business:"
  ML_job = gets.chomp.to_s.capitalize
puts "Enter a hobby:"
  ML_favething = gets.chomp.to_s.downcase
puts "Enter another hobby:"
  ML_favething2 = gets.chomp.to_s.downcase
puts "Enter a plural noun:"
  ML_thing1 = gets.chomp.to_s.downcase
puts "Enter another plural noun:"
  ML_thing2 = gets.chomp.to_s.downcase

# Outputs results - turns all values back into upper case to display
puts "Name : " + ML_name
puts "Age : " + ML_age
puts "State : " + ML_state
puts "#Pets : " + ML_petnum
puts "PetType : " + ML_pet.uppercase
puts "Job : " + ML_job
puts "Favorite Thing 1 : " + ML_favething.uppercase
puts "Favorite Thing 2 : " + ML_favething2.uppercase
puts "Items 2 : " + ML_thing1.uppercase
puts "Items 2 : " + ML_thing2.uppercase

# Start of the Madlib inserting varibales into output sentence
# Need to turn younger age back into string to concatenate within string
puts "HERE'S YOUR MADLIB..........."

puts "My name is " + ML_name + ", I'm " + ML_age + ", and I live in " + ML_state + ".
I have " + ML_petnum + " " + ML_pet + "s and I work at " + ML_job + ".
My favorites things to do are " + ML_favething + " and " + ML_favething2 + ". Five years ago, when I was " + ML_youngerage.to_s + "years old I moved here with nothing but " + ML_thing1 + " and " + ML_thing2 + "."

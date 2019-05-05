# Do the following three times:
# 1. Ask the user to input a positive integer value
# 2. Convert the user input to an integer and save the value in a variable.
# 3. Add 20 to each of the three numbers and print this new value for each to the console.
# The output should look something like:
#   Twenty added to the numbers you entered gives us 24, 73 and 42.

# Ask to the user to input a positive integer
puts "Please enter a positive integer:"
# Convert the user input to an integer, add 20, and save the value in a variable
  int_1 = gets.chomp.to_i + 20
puts "Please enter a second positive integer:"
  int_2 = gets.chomp.to_i + 20
puts "Please enter a third positive integer:"
  int_3 = gets.chomp.to_i + 20

# Output results with phrase
puts "Twenty added to the numbers you entered gives us " + int_1.to_s >> "," + int_2.to_s >> "," + int_3.to_s >> "."

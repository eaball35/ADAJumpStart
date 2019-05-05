# Numbers Problem Assignment V2

# Do the following 3X:
#     1) Ask the user to input a positive integer value
#     2) If the number is greater than or equal to 20, display a message to share so and a different message otherwise.

# Example output: (User input is indicated in ~~)
# This program will ask you to enter numbers and share if the number is less than 20.
   # Enter the 1st number: ~34~
   # 34 is greater than or equal to 20.
   # Enter the 2nd number: ~20~
   # 20 is greater than or equal to 20.
   # Enter the 3rd number: ~12~
   # 12 is less than 20.

# Let user know program is beginning
puts "This program will ask you to enter numbers and share if the number is less than 20."

# Ask user for first number
print "Enter the 1st number:"

# take whatever the user gives you and store it in varaible num_1 and convert it to an integer
num_1 = gets.chomp.to_i

# if the value of variable num_1 is greater than or equal to 20
if num_1 >= 20
# output the value in variable num_1 is greather than or equal to 20
  puts num_1.to_s + " is greater than or equal to 20."
#  if the value of variable num_1 is NOT greater than or equal to 20 than output the value in varibale num_1 is less than 20
else
  puts num_1.to_s + " is less than 20."
end

# Repeat for second number
print "Enter the 2nd number:"

num_2 = gets.chomp.to_i

if num_2 >= 20
  puts num_2.to_s + " is greater than or equal to 20."
else
  puts num_2.to_s + " is less than 20."
end

# Repeat for third number
print "Enter the 3rd number:"

num_3 = gets.chomp.to_i

if num_3 >= 20
  puts num_3.to_s + " is greater than or equal to 20."
else
  puts num_3.to_s + " is less than 20."
end

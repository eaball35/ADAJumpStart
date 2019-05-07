# - Numbers problem assignment V4 -
# 1. Ask the user for the count of numbers.
# 2. Create an array to hold the numbers that the user will input
# 3. Do the following count number of times:
#   a. Ask the user to input a positive integer value
#   b. Save the user input as an integer value into the next location in the array.
# 4. Go through each value in the array and compare each value to the last number entered by the user. Based on the comparison print the following:
#   a. If the value in the array is less than the value of the last number entered, print to the terminal that the value at that index is less than the value at the last index.
#   b. If the value in the array is greater than the value of the last number entered, print to the terminal that the value at that index is greater than the value at the last index.
#   c. If the value in the array is equal to the value of the last number entered, print to the terminal that the value at that index is equal to the value at the last index.
# 5. Print the following three to the terminal:
#   a. The minimum value in the array. Note: The minimum value is the lowest value in the array.
#   b. The maximum value in the array. Note: The maximum value is the highest value in the array.
#   c. The average of all the elements in the array. Note: The average is calculated as the (the sum of elements) / (the count of all elements).


# Ask user how many times they want to play game
puts "\nLets play a game. How many numbers would you like to enter?"
# store response in variable
gamenum = gets.chomp.to_i

#Loop through questions as many times as users asked to play in variable gamenum
quest_num = 1
nums_array = Array.new
  while quest_num <= gamenum do

#Create a small program as we filter through question number so we can provide the appropriate ending 1 - 1st, 2 - 2nd, etc
#Need to account for special cases of numbers ending in 11,12,13
          last_num = quest_num % 10
          secondlast_num = quest_num.to_s.slice(-2)
            if secondlast_num == "1" && last_num = (1..3)
              ordinal = "th"
            elsif last_num == 1
              ordinal = "st"
            elsif last_num == 2
              ordinal = "nd"
            elsif last_num == 3
              ordinal = "rd"
            else
              ordinal = "th"
            end

# ask the user for question - concatenating in the current question number and defined ordinal
      print "Enter the #{quest_num.to_s}#{ordinal} positive integer:"
# Save the user input as an integer value into the next location in the array
      nums_array << gets.chomp.to_i.abs
# iterate quest_num + 1 and continue looping until quest_num > gamenum
      quest_num += 1
    end

# output comparing to last value... statement
# use .last method to show the value of the last value in the array_nums
puts "\nComparing to the last value entered, #{nums_array.last}, here are the observations:"


# iterate as many times as the length of the array nums_array
nums_array.length.times do |i|
# Go through each value in the array and compare each value to the last number entered by the user
  if nums_array[i] < nums_array.last
    puts "The value at index #{i}, #{nums_array[i]} is less than value at the last index, #{nums_array.last}."
  elsif nums_array[i] > nums_array.last
    puts "The value at index #{i}, #{nums_array[i]} is greater than value at the last index, #{nums_array.last}."
  else nums_array[i] == nums_array.last
    puts "The value at index #{i}, #{nums_array[i]} is equal to the value at the last index, #{nums_array.last}."
  end
end

# print the min/max/average of array_nums
# to find average sum the array / length or number of objectsin the array and convert to a float
puts "\nThe minimum value in the array is #{nums_array.min}.
The maximum value in the array is #{nums_array.max}.
The average of all the values in the array is #{(nums_array.sum/nums_array.length).to_f}"

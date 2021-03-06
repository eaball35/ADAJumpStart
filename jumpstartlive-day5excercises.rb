# # - JS Live Day 5 Excercises -
# # 1. Create an array to store 5 names. 
# # Have the user enter in the 5 names and then print out the 5 names in all UPPERCASE all on the same line. 
# # Note that the user may not enter all the names in uppercase.
# names = Array.new
# 5.times do | num |
#     print "Enter name ##{num + 1}: "
#     names << gets.chomp.to_s.upcase
# end

# # 2. Create an array to store 3 boolean values entered in by the user. 
# # Print out YES if all the values are true and NO if at least one value is false. 
# # Hint: Prompt the user to enter true or false, and accept those values using gets. 
# # Since gets will give us back a string (instead of the boolean values we want) use if statements to convert those strings to boolean values.
# boolean_values = Array.new
# answer = true
# 3.times do | num |
#     print "Enter true or false: "
#     input = gets.chomp.to_s.downcase
#     if input == "true" 
#         value = true
#     else
#         value = false
#         answer = false
#     end
#     boolean_values << value
# end

# answer == true ? result = "YES" : result = "NO"
# puts result

# # 3. Create an array to store the following words: firetruck, fire drill, fire hydrant, firefighter, fireproof, fire station, fire hose. 
# # Then write code that uses the array to print out truck, drill, hydrant, fighter, proof, station, hose without modifying the array.

# fire_words = ["firetruck", "fire drill", "fire hydrant", "firefighter", "fireproof", "fire station", "fire hose"]
# fire_words.each_with_index {|word,index| print "#{fire_words[index].slice(4..-1).tr(" ","")} "}

# # 4. Create an array to store the amount of money spent on 4 people during the Holidays. 
# # Have the user enter in the amount spent on each person. 
# # Print the total spent on all the people. 
# # Total money spent should be displayed with a dollar sign, decimal point, and only 2 digits after the decimal.
# eachperson_spent = Array.new
# 4.times do |num|
#     print "Enter amount spent on person #{num + 1}: $"
#     eachperson_spent << gets.chomp.to_f
# end

# puts "\nTotal spent this holidays was $#{'%.2f' % eachperson_spent.sum}\n"

# # 5. Create an array to store 5 random numbers (between 1 and 10, including both 1 and 10) generated by the computer. 
# # Print out the square of each of the elements in the array.
# rand_nums = Array.new

# 5.times do |i|
#     rand_nums << rand(1..10)
#     puts rand_nums[i] ** 2
# end

# # 6. Create an array to store 5000 decimal numbers. 
# # Randomly generate numbers from between 0 – 1 (including 0, but not including 1) to fill the array. 
# # Calculate and print the mean of all the elements in the array.
# dec_nums = Array.new

# # 5000.times do |i|
# #     dec_nums << rand()
# # end

# puts "The mean of the array is #{(dec_nums.sum/dec_nums.length).round(4)}"

# [Optional] 1. Create an array of people that are invited to a party. 
# Allow the user to ask if a certain person is invited to the party. 
# If the person is on the invitation list respond INVITED otherwise respond NOT INVITED.
invited = ["washington", "adams", "jefferson", "madison", "jackson", "obama"]

print "Enter name to find out if they're invited: "
name = gets.chomp.to_s.downcase

if invited.include?(name)
  puts "INVITED"
else
  puts "NOT INVITED"
end

# [Optional] 2. Have the user enter in a sentence. 
# Then, using an array, store the frequency of each letter of the alphabet from the sentence. 
# Print out the frequency of each letter. Do not count uppercase and lowercase letters differently.
print "Please enter a sentence: "


# [Optional] 3. Create an array of size 8. Fill the array randomly with 0’s and 1’s. Print out the array so that it appears as a binary number. Calculate and print out the decimal value of that binary number.

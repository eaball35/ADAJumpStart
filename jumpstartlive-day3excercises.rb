# -  JumpStart Live  Day 3 Excercises  - 

# 1. Write a program that allows a user to play a guessing number game. 
# Your program should generate a random number between 0 – 1000 (including 0, but not including 1000). 
# Allow the user to make a guess until they guess the answer. After each guess you should print "higher" or "lower". 
# When they guess it correctly print a winning message along with their total number of guesses.
rand_number = rand(999)

count = 0
guess = ""
until guess == rand_number
  print "Guess my number: "
  guess = gets.chomp.to_f
  
  count += 1
# treatment for guesses for guess
  guess == 1? ending = "" : ending = "ES"
  if guess < rand_number
    puts "HIGHER"
  elsif guess > rand_number
    puts "LOWER"
  else
    puts "YOU GOT IT IN #{count} GUESS#{ending}. "
  end
end

# 2. Write a program that plays duck duck goose. 
# Allow the user to enter the player's number they want to call goose on,
# and then say "duck" for each player before the "goose", then say "goose" for the chosen player.
print "\nWhich player do you want to Goose? " 
  goose = gets.chomp.to_i

player_num = 0
until player_num == goose
  player_num += 1
  if player_num == goose
    response = "Goose"
  else 
    response = "Duck"
  end
  puts "Player #{player_num}: #{response}"
end

# 3. Write a program that allows a user to enter the number of petals on a flower. 
# Then one by one, print “plucking petal #1: they love me!”. 
# Alternate “They love me” and “They love me not” as well as increase the petal number for each petal.
print "\nHow many petals on your flower? " 
  petals = gets.chomp.to_i
    
petal_num = 0
until petal_num == petals
  if petal_num % 2 == 0
    love_me = " not"
  else 
    love_me = ""
  end

  petal_num += 1
  puts "Petal # #{petal_num}: They love me#{love_me}"
end

# 4. You don't trust your users. Modify the program below to 
# require the user to enter the same value twice in order to add that value to the total.

# - Original Program - 
# puts "Hello! We are going to total some numbers!"
# puts "Enter a negative number to quit."

# total = 0
# input = gets.chomp.to_i
# while input > -1
#   total += input
#   input = gets.chomp.to_i
# end

# puts "Result: #{total}"

puts "\nHello! We are going to total some numbers!
Verify your entry by entering number twice & enter a negative number to quit."
input_1 = gets.chomp.to_i
input_2  = gets.chomp.to_i
total = 0

while input_1 > -1
  total += input_2 if input_1 == input_2
  input_2 = gets.chomp.to_i
  input_1 = gets.chomp.to_i
end

puts "Result: #{total}"
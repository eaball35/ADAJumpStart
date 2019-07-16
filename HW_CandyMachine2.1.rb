# Ada Jump Start: CANDY MACHINE ASSIGNMENT
# - Overview- 
# This challenge is to build a computer candy machine. You’ve got some money and you want to buy some candy. 
# So, you go up to the candy machine, put in your money, select your candy, and then pick up your candy and your change. 
# You can use gets.chomp to get input from the user without the extra newline at the end.

# - Requirements -
#    1. Ask the user how much money they have, assume that the $ symbol is part of the prompt (the user doesn't have to enter it)
#    2. Display all candy options and their costs (even if the user cannot afford the candy)
#    3. Decide whether the user can afford the candy or not, if they can't, tell them so, if they can, calculate and display their change
#    4. [Optional] Handle when the buyer enters "C" or "c" so that it works as expected
#    5. [Optional] Do something appropriate when the buyer enters an invalid amount for the money and an invalid selection


puts "\nWelcome to Ada Developers Academy's Computer Candy Machine!
(All candy provided is virtual.)\n "
# 1. Ask the user how much money they have, assume that the $ symbol is part of the prompt (the user doesn't have to enter it)
# 5. [Optional] Do something appropriate when the buyer enters an invalid amount for the money and an invalid selection - Utilizing .to_f to store as float. If input is string or nil it will store as 0.00
print "How much money do ya got? > $"
user_money = gets.chomp.to_f

# If user has more than $2 tell them "that' alot!" otherwise tell them "that's all?"
if user_money > 2
  puts "\n$ #{'%.2f' % user_money}, that's alot!"
else
  puts "\n$ #{'%.2f' % user_money}, that's all?"
end

# 2. Display all candy options and their costs (even if the user cannot afford the candy)
puts "Well, lemme tell ya what we got here.\n
A $0.65 Twix
B $0.50 Chips
C $0.75 Nutter Butter
D $0.65 Peanut Butter Cup
E $0.55 Juicy Fruit Gum\n "

# 4. [Optional] Handle when the buyer enters "C" or "c" so that it works as expected - Utilized .downcase to store as lowercase no matter which version they enter
print "So, What'll ya have? > "
user_candy = gets.chomp.to_s.downcase

# 5. [Optional] Do something appropriate when the buyer enters an invalid amount for the money and an invalid selection - Lopping through question until input is valid selection.
until user_candy == "a" || user_candy == "b" || user_candy == "c" || user_candy == "d" || user_candy == "e"
  print "Please try again. Enter a letter selection between A-E. > "
  user_candy = gets.chomp.to_s.downcase
end

# Store user's candy selection cost based on price of product associated with selection
case user_candy
when "a" , "d"
  user_selection = 0.65
when "b"
  user_selection = 0.5
when "c"
  user_selection = 0.75
when "e"
  user_selection = 0.55
end

# 3. Decide whether the user can afford the candy or not, if they can't, tell them so, if they can, calculate and display their change
if user_money > user_selection
  puts "\nThanks for purchasing candy through us. \nPlease take your candy, and your $#{'%.2f' % (user_money-user_selection)} change!\n "
elsif user_money < user_selection
  puts "\nYou're broke. You need $#{'%.2f' % (user_selection-user_money)} more to purchase that. \nTake your $#{'%.2f' % user_money} and go elsewhere.\n "
else
  puts "\nThanks for purchasing candy through us. Please take your candy, there is no change.\n "
end
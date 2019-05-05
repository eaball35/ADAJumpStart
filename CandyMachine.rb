puts "What is your name?"
  UsersName = gets.chomp.capitalize

# Let user know program is beginning and ask them how much money they have
puts " "
puts "Welcome to Ada Developers Academy's Computer Candy Machine," + UsersName + "!"
puts "(All candy provided is virtual.)"
puts " "
print "How much money do ya got? > $"

# Store users response in varibale UsersMoney and convert to a float
UsersMoney = gets.chomp.to_f.round(2)

# Respond to user with their response and provide candy selectionse
# if user has more than $2 tell them they have a lot, if they have less tell them that's all?
puts " "
if UsersMoney >= 2
  puts "$" + UsersMoney.to_s + ", that's alot!"
else
  puts "$" + UsersMoney.to_s + ", that's all?"
end
puts "Well, lemme tell ya what we got here."
puts " "
puts "A $0.65 Twix"
puts "B $0.50 Chips"
puts "C $0.75 Nutter Butter"
puts "D $0.65 Peanut Butter Cup"
puts "E $0.55 Juicy Fruit Gum"
puts " "
# Ask user to make a selection
print "So, What'll ya have? > "

# Store users response in varibale UserCandy
UserCandy = gets.chomp

# Create variables for various candies and their associated price
A_Twix = 0.65
B_Chips = 1.5
C_Nutter = 0.75
D_PBCup = 0.65
E_JFGum = 0.55

# If use enters string A or a
if UserCandy =="A" || UserCandy =="a"
# if they selected A, is their stored value for UserMoney great than or equal to the stored value for selection A
  if UsersMoney >= A_Twix
# if so, tell than thanks for purchasing and calculate their change
    puts " "
    puts "Thanks for purchasing candy through us."
    puts "Please take your candy, and your $" + (UsersMoney-A_Twix).round(2).to_s + " change!"
# otherwise if users money value stored in usersmoney is less than value of selected A_twix than tell them they're broke
  else
    puts "You're broke. Take your $" + UsersMoney.to_s + " and go elsewhere."
  end

#if the user didn't input A or a continue on, did they enter B or b? and repeat for selection B stored in variable B_Chips
elsif UserCandy =="B" || UserCandy =="b"
  if UsersMoney >= B_Chips
    puts " "
    puts "Thanks for purchasing candy through us."
    puts "Please take your candy, and your $" + (UsersMoney-B_Chips).round(2).to_s + " change!"
  else
    puts "You're broke. Take your $" + UsersMoney.to_s + " and go elsewhere."
  end

#if the user didn't input B or b continue on, did they enter C or c? and repeat for selection C stored in variable C_Nutter
elsif UserCandy =="C" || UserCandy =="c"
  if UsersMoney >= C_Nutter
    puts " "
    puts "Thanks for purchasing candy through us."
    puts "Please take your candy, and your $" + (UsersMoney-C_Nutter).round(2).to_s + " change!"
  else
    puts "You're broke. Take your $" + UsersMoney.to_s + " and go elsewhere."
  end

#if the user didn't input C or c continue on, did they enter D or d? and repeat for selection D stored in variable D_PBCup
elsif UserCandy =="D" || UserCandy =="d"
  if UsersMoney >= D_PBCup
    puts " "
    puts "Thanks for purchasing candy through us."
    puts "Please take your candy, and your $" + (UsersMoney-D_PBCup).round(2).to_s + " change!"
  else
    puts "You're broke. Take your $" + UsersMoney.to_s + " and go elsewhere."
  end

#if the user didn't input D or d continue on, did they enter E or e? and repeat for selection E stored in variable E_JFGum
elsif UserCandy =="E" || UserCandy =="e"
  if UsersMoney >= E_JFGum
    puts " "
    puts "Thanks for purchasing candy through us."
    puts "Please take your candy, and your $" + (UsersMoney-E_JFGum).round(2).to_s + " change!"
  else
    puts "You're broke. Take your $" + UsersMoney.to_s + " and go elsewhere."
  end

#if the user didn't enter any of A,a,B,b,C,c,D,d,E,e then provide them with response about their selection
else puts "You did not enter one of the selections provided."
end

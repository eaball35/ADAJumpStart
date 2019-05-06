
# Ask user how many times they want to play game
puts "Lets play a game. How many numbers would you like to enter?"
# store response in variable
gamenum = gets.chomp.to_i


#Loop through questions as many times as users asked to play in variable gamenum
quest_num = 1
  while quest_num <= gamenum

#Create a small program as we filter through question number so we can provide the appropriate ending 1 - 1st, 2 - 2nd, etc
#Need to account for special cases of numbers ending in 11,12,13
    last_num = quest_num % 10
    special_case = quest_num.to_s.slice(-2)
      if special_case == "1" && last_num = (1..3)
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
# record users response in num
    num = gets.chomp.to_i
# if the num is divided by three and has a mod of 0 it is divisible by 3
#Create if,else block to provide response based on given num
        if num%3 == 0
          puts "#{num} is divisible by 3"
        else
          puts "#{num} is not divisible by 3"
        end
# iterate quest_num + 1 and continue looping until quest_num > gamenum
    quest_num += 1
end

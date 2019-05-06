# Create an election program that accepts input from the user and outputs the winner of the election
#     Input: Poll 10 people for their election vote
#     Output: Print the total votes cast as well as the winner of the election

# Provide the user with the voting options
puts "Welcome to my election voting program.\n
  Election candidates are: Donald Duck, Minnie Mouse, Goofy"

donald = 0
minnie = 0
goofy = 0
invalid = 0

# 10 times iterate through block - ask for vote, get response
# based on response record +1 vote in associated variable (donald, minnie, goofy)
10.times do |num|
  num += 1
  print "Vote # #{num}: "
    vote = gets.chomp
      if vote == "Donald Duck"
        donald += 1
      elsif vote == "Minnie Mouse"
        minnie += 1
      elsif vote == "Goofy"
        goofy += 1
      else
        invalid += 1
      end
end

# run small program to calculate the winner by running through possible outcomes
if donald == minnie && donald == goofy
  winner = "No Winner"
elsif donald > minnie && donald > goofy
  winner = "Donald Duck"
elsif minnie > donald && donald > goofy
  winner = "Minnie Mouse"
elsif goofy > donald && goofy > minnie
  winner = "Goofy"
elsif minnie == donald
  winner = "Tie between Donald Duck & Minnie Mouse"
elsif minnie == goofy
  winner = "Tie between Minnie Mouse & Goofy"
elsif goofy == donald
  winner = "Tie between Donald Duck & Goofy"
else
  winner = "No Winner"
end

# proivde election results
# provide totals within string from goofy, minnie, donald variables
# calculate winner using winner variable ran in previous block
puts "ELECTION RESULTS....\n
 Vote Summary:
 Goofy - #{goofy} vote(s)
 Minnie Mouse - #{minnie} vote(s)
 Donald Duck - #{donald} vote(s)

 WINNER: #{winner}!"

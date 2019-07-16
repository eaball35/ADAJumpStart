# - Primary Requirements - 
# ✓ Create an election program that accepts input from the user and outputs the winner of the election
# ✓ Input: Poll 10 people for their election vote
# ✓ Output: Print the total votes cast as well as the winner of the election

# - Optional Enhancements -
# A. Handle ties for a winner appropriately
# B. Handle grammar of vote summary saying vote or votes appropriately
# C. Handle write in votes
# D. Consider how to handle more than 10 votes
# E. Consider how to handle more than 3 candidates
# D. Refactor your code so that your code is DRY (Don't Repeat Yourself)


puts "\nWelcome to my election voting program!
Please enter votes below. Enter \"end\" to stop entering votes.\n "

# D. Consider how to handle more than 10 votes 
#       - accepting votes until user enters "end"
#       - breaks loop if user enters "end" - end won't get stored as last key in hash
# C. Handle write in votes
# E. Consider how to handle more than 3 candidates
#       - store user inputed vote as new hash key(candidate) with value(votes) set to one
#       - if the key(candidate) already exists the associated value(votes) is incremented plus 1 to sum votes for each candidate
candidate_vote = Hash.new
vote = 0
vote_num = 0
until vote == :end
    vote_num += 1
    print "Vote # #{vote_num}: "
    vote = gets.chomp.to_s.downcase.to_sym
    break if vote == :end
    candidate_vote.key?(vote)? 
      candidate_vote[vote] += 1 
      : candidate_vote[vote] = 1
end

winners = Array.new
puts "\nELECTION RESULTS....
\nVote Summary:"
candidate_vote.each do |name, votes| 
# B. Handle grammar of vote summary saying vote or votes appropriately
#       - if vote is 1: add "s" to ending otheriwse don't, Used ternary syntax
    votes == 1 ? ending = "": ending = "s"
    puts "#{name} - #{votes} vote#{ending}"

# A. Handle ties for a winner appropriately
#       -if current value is max of hash, store key in array to capture multiple winners in case of tie
    winners << name if votes == candidate_vote.values.max
end

# 1. Handle ties for a winner appropriately
#       - if length of winners array is greater than 1 (more than one winner stored) display tie message
#       - using join() method to print each element in winners array seperated by " and "
if winners.length > 1
    puts "\nThere was a tie between #{winners.join(" and ")}.\n "
else
    puts "\nWINNER: #{winners[0]}!\n "
end





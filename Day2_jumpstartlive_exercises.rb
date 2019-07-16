# - Day 2 JumpStart Live Exercises - 
# In one Ruby file, write code to solve the problems below. Your code should print out each problem statement, followed by the output from the conditional statement(s).

# 1. Prompt for a number. If the number is greater than 70, print PASSING; otherwise, print NOT PASSING.
print "Enter a number > "
greater_70_number = gets.chomp.to_f

if greater_70_number > 70
  puts "PASSING"
else
  puts "NOT PASSING"
end

# 2. Prompt for a string. If the string is equal to green, print GO, otherwise, print STOP.
print "Enter a color > "
color = gets.chomp.to_s.downcase

if color == "green"
  puts "GO"
else
  puts "STOP"
end

# 3. Prompt for a number. If the number is even, print EVEN, otherwise, print ODD.
print "Enter a number > "
even_odd_number = gets.chomp.to_f

if even_odd_number % 2 == 0
  puts "EVEN"
else
  puts "ODD"
end

# 4. Prompt for a number. If the number is evenly divisible by 5, print MULTIPLE OF 5, otherwise, print NOT A MULTIPLE OF 5.
print "Enter a number > "
div_five_number = gets.chomp.to_f

if div_five_number % 5 == 0
  puts "MULTIPLE OF 5"
else
  puts "NOT A MULTIPLE OF 5"
end

# 5. Prompt for a number. If the number is less than 10, print ONE DIGIT. If the number is 100 or greater, print THREE DIGITS, otherwise print TWO DIGITS.
print "Enter a number > "
digits_number = gets.chomp.to_f

if digits_number < 10
  puts "ONE DIGIT"
elsif digits_number >= 100
  puts "THREE DIGITS"
else
  puts "TWO DIGITS"
end

# 6. Prompt for a jersey number. If that number is 12, 71, or 80, print That number is retired from the Seattle Seahawks!, otherwise do nothing.
print "Enter a jersey number > "
digits_number = gets.chomp.to_i

if digits_number == 12 || digits_number == 71 || digits_number == 80
  puts "That number is retired from the Seattle Seahawks!"
end

# 7. Prompt for a state. If the state is Washington, Oregon, or Idaho, print This state is in the PNW, otherwise print You should move to the PNW; it’s great here!
print "Enter a state > "
state = gets.chomp.to_s.downcase

if state == "washington" || state == "oregon" || state == "idaho"
  puts "This state is in the PNW."
else
  puts "You should move to the PNW; it’s great here!"
end

# 8. Prompt for a one of the following: SHORT, TALL, GRANDE, VENTI. Print out the number of ounces that drink includes (8, 12, 16, 20 respectively).
print "Enter one of the following: SHORT, TALL, GRANDE, VENTI > "
drink_selection = gets.chomp.to_s.downcase

case drink_selection
when "short"
  ounces_selection = 8
when "tall" 
  ounces_selection = 12
when "grande"
  ounces_selection = 16
when "venti"
  ounces_selection = 20
end

puts "The #{drink_selection.upcase} is #{ounces_selection} ounces."

# 9. Prompt for rate of pay and hours worked. Calculate gross pay. Provide time-and-a-half for hours worked beyond 40 (e.g., if you get paid $10/hr and work 45 hours in a week, you would gross $475 (40 x 10 + 5 x 15).
print "Enter Rate of Pay > $"
  pay_rate = gets.chomp.to_f
print "Enter Hours Worked > "
  hours_worked = gets.chomp.to_f

if hours_worked <= 40
  gross_pay = hours_worked * pay_rate
  puts "Your gross pay is $#{'%.2f' % gross_pay}."
else
  hours_overtime = hours_worked - 40
  gross_pay = (40 * pay_rate) + (hours_overtime * pay_rate * 1.5)
  puts "Your gross pay is $#{'%.2f' % gross_pay}.\nYou earned $#{'%.2f' % (hours_overtime * pay_rate * 1.5)} in overtime pay."
end

# 10. Rewrite the solution to the previous problem adding this modification: do not process any employee if their hours worked is greater than 60, instead display the message Please see manager.
print "Enter Rate of Pay > $"
  pay_rate = gets.chomp.to_f
print "Enter Hours Worked > "
  hours_worked = gets.chomp.to_f

if hours_worked > 60
  puts "Please see manager."
elsif hours_worked <= 40
  gross_pay = hours_worked * pay_rate
  puts "Your gross pay is $#{'%.2f' % gross_pay}."
else
  hours_overtime = hours_worked - 40
  gross_pay = (40 * pay_rate) + (hours_overtime * pay_rate * 1.5)
  puts "Your gross pay is $#{'%.2f' % gross_pay}.\nYou earned $#{'%.2f' % (hours_overtime * pay_rate * 1.5)} in overtime pay."
end

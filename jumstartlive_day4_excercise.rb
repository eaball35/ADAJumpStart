#  - Password Verification - 
# Many companies have password requirements (must include a letter, a number_check and a symbol_check 
# for example and require a password of a specific length_check). We're going to write a program 
# that will read in a proposed password and only accept it, if it meets all rules.  

# - Create a program that will: -
#  * Prompt a user for input (for a new password)
#  * Read in the proposed Password to a variable
#  * If the password contains a number and a symbol (@, %, \*, or !) and contains 8 or more characters then accept the password and congratulate the user, if not make them reenter the password until they enter an acceptable password
#  * [Optional] Make the user enter the password a second time to verify, and if it's not the same as the original password, make them repeat the process
#  * [Optional] Make them include a capital and a lowercase letter
#  * [Optional] Let them know what they did wrong

symbol_check = false
length_check = false
number_check = false
uppercase_check = false
lowercase_check = false

# keeping asking user to renter the password until it meets all the requires
until symbol_check && length_check && number_check && uppercase_check && lowercase_check
#  Prompt a user for input (for a new password)
    print "\nPlease enter a password: "
#  Read in the proposed Password to a variable
    password = gets.chomp.to_s

  print "Please verify password by re-entering the same password: "
  verify_password = gets.chomp.to_s  
    until password == verify_password
      print "Passwords must match. Please re-enter password: "
      verify_password = gets.chomp.to_s
    end

  symbol_check = false
  length_check = false
  number_check = false
  uppercase_check = false
  lowercase_check = false

#   Check if password contains symbols
#  let user know if they entered requirement correctly or not
  if password =~ /[@%\*!]/
    symbol_check = true
    mark = "✓"
  else   
    mark = "X"
  end
  puts "  [#{mark}] contains at least one symbol (@, %, \\, *, or !)" 

  #   Check if password is 8 characters or longer
  #  let user know if they entered requirement correctly or not
  if password.length > 7
    length_check = true
    mark = "✓"
  else   
    mark = "X"
  end
  puts "  [#{mark}] 8 characters or longer"

#   Check if password contains at least 1 number
#  let user know if they entered requirement correctly or not
  if password =~ /\d/
    number_check = true
    mark = "✓"
  else   
    mark = "X"
  end
  puts "  [#{mark}] contains at least one number"

#   Check if password contains an uppercase letter
#  let user know if they entered requirement correctly or not
  if password =~ /[A-Z]/
    uppercase_check = true
    mark = "✓"
  else   
    mark = "X"
  end
  puts "  [#{mark}] contains at least one uppercase letter"

#   Check if password contains a lowercase letter
#  let user know if they entered requirement correctly or not
  if password =~ /[a-z]/
    lowercase_check = true
    mark = "✓"
  else   
    mark = "X"
  end
  puts "  [#{mark}] contains at least one lowercase letter"
end

# Congradulate user if their passwords meets requirements
puts "\nCongratulations! Your new password #{password} is saved.
\n"



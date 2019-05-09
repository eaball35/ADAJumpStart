
# intialize variables, arrays, hashes to be used in program
num_students = 5
student_id = Array.new
student_email = Array.new
student_data = Array.new
student = Hash.new

# number of students you'd like to enter from num_students variable
# for the number of students times ask the user to input First and last name - create student id, email and store in hash
# store inputs in temporary first and last variables
num_students.times do |name_num|
  print "Please enter #{name_num +1 } student:  \n  First Name : "
    first = gets.chomp.upcase
  print "   Last Name : "
    last = gets.chomp.upcase

# generate random id for each student between given numbers store in temporary vairable id
  id = (rand (111111..999999))

# generate emai using first and last variables and slice method
  email = "#{first.slice(0)}#{last}#{id.to_s.slice(-3)}\@adadevelopersacademy.org"

# generate hash with provided/generate information for current student in loop
  student = {
      first_name: first,
      last_name: last,
      id: id,
      email: email,
    }

# add hash to array studen_data each loop
  student_data << student
end

# for each index (each index has value from generated student hashes) in array student_data
# print the key values for first name, last name, email, and id
student_data.each do | student |
puts "#{student[:first_name]} #{student[:last_name]} | #{student[:id]} | #{student[:email]}"
end

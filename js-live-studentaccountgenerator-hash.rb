# - JumpStart Live Student Account Generator (User Input, Using Hash) - 

# - Refactor Steps-
# 1. Utilize a single array variable to store all student information, instead of three individual arrays. This array will contain many hashes.
# 2. Utilize a single loop to drive the hash population (you may have nested loops inside this loop for other functionality):
#     2a. Accept user input for the student's name
#     2b. Generate random student ID
#     2c. Generate student email address from previous pieces of data
# 3. Update the printing functionality to utilize this new hash variable to print out student roster

print "\nWelcome to my student account generator.
\nHow many students would you like to enter?: "
num_students = gets.chomp.to_i

name = Array.new
student_ids = Array.new
student = Hash.new
student_data = Array.new

# 2. Utilize a single loop to drive the hash population (you may have nested loops inside this loop for other functionality)
#     2a. Accept user input for the student's name
#     2b. Generate random student ID
#     2c. Generate student email address from previous pieces of data
num_students.times do |student_num|
  print "Please enter student #{student_num + 1}'s full name:"
    input = gets.chomp.to_s.upcase
    name = input.upcase.tr('.-,',' ').split(" ")
      until name.length > 1 
        print "Please reenter student #{student_num + 1}'s full name (first + last): "
        input = gets.chomp.to_s
        name = input.upcase.tr('.',' ').split(" ")
      end  

    id = rand (111111..999999) 
    until student_ids.index(id).nil?
      id = rand(111111..999999)
    end
    student_ids << id

    if name.length > 2
      first_name = name.first(2)
      last_name = name.drop(2)
      email = "#{first_name[0][0]}#{first_name[1][0]}#{last_name.join('')}#{id.to_s.slice(-3..-1)}@adadevelopersacademy.org"
    else  
      first_name = name.first(1)
      last_name = name.drop(1)
      email = "#{first_name[0][0]}#{last_name.join('')}#{id.to_s.slice(-3..-1)}@adadevelopersacademy.org"  
    end

# 1. Utilize a single array variable to store all student information, instead of three individual arrays. This array will contain many hashes.
#     - For current student in loop, create new student hash with student info - store this hash to end of student_data array
    student_data << student = {
        name_first: first_name,
        name_last: last_name,
        name_input: input,
        id: id,
        email: email,
    }
end

# 3. Update the printing functionality to utilize this new hash variable to print out student roster
student_data.each do | student |
puts "#{student[:name_input]} : #{student[:id]} - #{student[:email]}"
end

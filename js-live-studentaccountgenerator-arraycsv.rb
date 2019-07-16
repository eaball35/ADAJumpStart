# - JumpStart Live Student Account Generator (CSV Input, Using Arrays) - 

# 1. You will start by creating three arrays:
#       An array that will contain student names
#       An array that will store student ID numbers
#       An array that will contain student email addresses
student_names_fullinput = Array.new
student_names_first = Array.new
student_names_last = Array.new
student_ids = Array.new
student_emails = Array.new

# [Optional] Read in the student names from a file instead of the user and make the array size according to the number of names
require 'csv'
CSV.foreach('/Users/mac/Desktop/jslive-hw/accountgenerator_names.csv', headers: true) do | eachstudent |
  student_names_fullinput << eachstudent['Student Names'].to_s
end
num_students = student_names_fullinput.length

# 2. Write a times loop that asks the user to enter in 5 student names (first and last name) and store those values in the first array in all uppercase even if the information is not entered by the user in uppercase.
# 3. Write a times loop to generate random student ID numbers from 111111 to 999999 and put these values to the student ID number array.
# 4. Write a times loop to generate student email addresses in the format: (first inital)+(last name)+(last 3 digits of student ID number)@adadevelopersacademy.org
num_students.times do | student_num |
  full_name = student_names_fullinput[student_num]
  name = full_name.upcase.tr('.-,',' ').split(" ")
  
# [optional] make sure none of the IDs are duplicates
  id = rand(111111..999999)
    until student_ids.index(id).nil?
      id = rand(111111..999999)
    end
  student_ids << id

# [optional] account for ID numbers whose last 3 digits are less than 100 (e.g. 111008) because these ID numbers will generate an email address with less than 3 digits at the end without special cases
# [optional] on email generation, account for first names with a space in them e.g. if the first name is "Mary Jane", then the first initial should be "MJ" rather than just "M"
  if name.length > 2
    student_names_first << name.first(2)
    student_names_last << name.drop(2)
    student_emails << "#{student_names_first[student_num][0][0]}#{student_names_first[student_num][1][0]}#{student_names_last[student_num].join('')}#{student_ids[student_num].to_s.slice(-3..-1)}@adadevelopersacademy.org"
  else  
    student_names_first << name.first(1)
    student_names_last << name.drop(1)
    student_emails << "#{student_names_first[student_num][0][0]}#{student_names_last[student_num].join('')}#{student_ids[student_num].to_s.slice(-3..-1)}@adadevelopersacademy.org"  
  end
end

# 5. Write the code which will print out all the student names, ID numbers, and email addresses in parallel.
num_students.times do | student_index |
  puts "#{student_names_fullinput[student_index]}: #{student_ids[student_index]} - #{student_emails[student_index]}"
end

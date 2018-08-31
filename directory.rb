student_count = 11
def input_students
  puts "Please enter the names, then hobbies,then country of birst and then
  height of the students"
  puts "To finish, just hit return four times"
  students = []
  name = gets.chomp
  hobbies = gets.chomp
  country_of_birth = gets.chomp
  height = gets.chomp


  while !name.empty? do
    students << {name: name, cohort: :november, hobbies: hobbies,
      country_of_birth: country_of_birth, height: height }
    puts "Now we have #{students.count} students"
    name = gets.chomp
    hobbies = gets.chomp
    country_of_birth = gets.chomp
    height = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(students)
    students.each.with_index(1) do |student, index|
      if /^[Bb].*/ === student[:name]
        puts "#{index}: #{student[:name]} (#{student[:cohort]} cohort), who
        likes #{student[:hobbies]}, is from #{student[:country_of_birth]} and is
        #{student[:height]} tall"
      end
  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)

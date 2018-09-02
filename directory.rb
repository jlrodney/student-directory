def default_string(string)
  string = gets.chomp
  if string.empty?
    string = "None provided"
  end
  return string
end

def input_students
  puts "Please enter student name"
  puts "to finish hit enter twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    puts "Enter cohort"
    months = [:january, :february, :march, :april, :may, :june, :july, :august, :september, :october, :november, :december]
    cohort = default_string(cohort).downcase.to_sym
    unless months.include? cohort
      puts "Please try again"
      puts "Enter cohort"
      cohort = default_string(cohort).downcase.to_sym
    end
    puts "Please enter hobby"
    hobbies = default_string(hobbies)
    puts "Please enter country of birth"
    country_of_birth = default_string(country_of_birth)
    puts "Please enter height"
    height = default_string(height)

    students << {name: name, cohort: cohort, hobbies: hobbies,
      country_of_birth: country_of_birth, height: height }
    puts "Now we have #{students.count} students"
    puts "Please enter another student name"
    puts "to finish hit return twice"
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(students)
  i = 0
  while i < students.length
    width = 50
      spacer = ' '
      puts "#{students.index(students[i]) + 1}: #{students[i][:name]}"
      puts " Who likes #{students[i][:hobbies]} ".center(width,spacer)
      puts " Is from: #{students[i][:country_of_birth]} ".center(width,spacer)
      puts " (Height: #{students[i][:height]} tall) ".center(width,spacer)
      puts " (#{students[i][:cohort]} cohort) ".center(width,spacer)
        i += 1
  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)

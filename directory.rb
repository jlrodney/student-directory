$months = [:january, :february, :march, :april, :may, :june, :july, :august, :september, :october, :november, :december]
$width = 50
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
    cohort = default_string(cohort).downcase.to_sym
    while !$months.include? cohort
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
      country_of_birth: country_of_birth, height: height}
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
def printer(students)
  $months.map do |month|
    students.map do |student|
      unless !student[:cohort].to_s.include? month.to_s
        i = 0
        puts "#{student[:name]}"
        puts " Who likes #{student[:hobbies]} ".center($width)
        puts " Is from: #{student[:country_of_birth]} ".center($width)
        puts " Height: #{student[:height]} tall ".center($width)
        puts " #{student[:cohort]} cohort ".center($width)
        i += 1
      end
    end
  end
end
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
printer(students)
print_footer(students)

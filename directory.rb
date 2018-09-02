@students = []
def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def print_menu
    # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
end
def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "9"
      exit
    else
      puts "I don't know what you meant, try again"
  end
end
def show_students
      print_header
      print_students_list
      print_footer
end

$months = [:january, :february, :march, :april, :may, :june, :july, :august, :september, :october, :november, :december]
$width = 50
def default_string(string)
  string = gets.gsub(/\n/,"")
  if string.empty?
    string = "None provided"
  end
  return string
end
def input_students
  puts "Please enter student name"
  puts "to finish hit enter twice"
  name = gets.gsub(/\n/,"")
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

    @students << {name: name, cohort: cohort, hobbies: hobbies,
      country_of_birth: country_of_birth, height: height}
    print "\nNow we have #{@students.count} student"
    if @students.length == 1
      print "\n"
    else print "s\n"
    end
    puts "Please enter another student name"
    puts "to finish hit return twice"
    name = gets.gsub(/\n/,"")
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print_students_list
  $months.map do |month|
    @students.map do |student|
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
def print_footer
  print "\nOverall, we have #{@students.count} great student"
  if @students.length == 1
    print "\n"
  else print "s\n"
  end
end

interactive_menu

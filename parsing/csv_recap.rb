# loads the students from the csv
# into an array of hashes (each hash represents a student)
# display an ordered list of these students, with their age
# ask the user for a new student
# add it to the array
# update the csv
# {name: "Arbi", age: 27}
require "csv"

students = []
CSV.foreach("students.csv") do |csv_row|
  students << {name: csv_row[0], age: csv_row[1].to_i}
end

students.each_with_index do |student, index|
  puts "#{index + 1} - #{student[:name]} is #{student[:age]} y.o." 
end

puts "enter a new student's name"
name = gets.chomp
puts "enter the age"
age = gets.chomp.to_i
students << {name: name, age: age}

# add - delete - update
CSV.open("students.csv", "wb") do |csv_row|
  students.each do |student|
    csv_row << [student[:name], student[:age]]
  end
end

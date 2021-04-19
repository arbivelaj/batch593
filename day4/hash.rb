students =     [ "Peter", "Mary", "George", "Emma" ]
student_ages = [ 24     , 25    , 22      ,  20    ]

students.each_with_index do |student, index|
  puts "#{student} is #{student_ages[index]} y.o."
end

# NON REPETABLE & UNIQUE "indexes" -> "keys"

students_ages = {
  "Peter" => 24,
  "Mary" => 25,
  "George" => 22,
  "Emma" => 20
}

# CRUD
# READ in an array
students[0]

# READ in hash
students_ages["Peter"]

# CREATE in array
students << "arbi"

# CREATE for hash
students_ages["Arbi"] = 27

# UPDATE for an array
students[0] = "..."
# UPDATE for an array
students_ages["Arbi"] = 100

# DELETE for an array
students.delete_at(0) # or .delete

# DELETE for an hash
students_ages.delete("Peter")

students_ages.each do |name, age|
  puts "#{name} is #{age} y.o."
end

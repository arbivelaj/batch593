# age = 18

# if age >= 18
#   puts "you can drink"
# else
#   puts "you can't drink"
# end

# grades = [19, 8, 11, 15, 13]
# sum = 0
# grades.each do |grade|
#   sum += grade
# end

# average = sum.to_f / grades.length
# p average

# def full_name(first, last)
#   first.capitalize + " " + last.capitalize # concatenation
#   "#{first.capitalize} #{last.capitalize}" # interpolation
# end

students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]

STUDENT = 67
# [{name: "john", age: 28}, {name: "mary", age: 25}, {name: "paul", age: 21}]

s = students.map do |student_array|
  {name: student_array[0], age: student_array[1]}
end

p s
musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

# an array with all the upcased name -> .each
# upcased_musicians = []
# musicians.each do |musician|
#   upcased_musicians << musician.upcase
# end


# .map: which does for us 1) creates the new array 2) automatically pushes into it

# upcased_musicians = musicians.map do |musician|
#   musician.upcase
# end
# p upcased_musicians

# first_names = musicians.map do |musician|
#   musician.split(" ").first
# end

# p first_names



# COUNT
# .each

# musicians_r = []
# musicians.each do |musician|
#   musicians_r << musician if musician.start_with?("R")
# end
# p musicians_r.size

# musicians_r = 0
# musicians.each do |musician|
#   musicians_r += 1 if musician.start_with?("R")
# end
# p musicians_r

# musicians_r = musicians.count do |musician|
#   musician.start_with?("R")
# end

# p musicians_r

# musicians_r = []
# musicians.each do |musician|
#   musicians_r << musician if musician.start_with?("R")
# end
# p musicians_r

# musicians_r = musicians.select do |musician|
#   musician.start_with?("R")
#   5
# end

# p musicians_r

m = musicians.each do |musician|
  musician.downcase
end
p m








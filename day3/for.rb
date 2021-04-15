musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

# FOR - iterate on the values of this array

for musician in musicians
  puts "listen to #{musician}"
end

def good_morning
  puts "good morning"
end

# same output - using .each
musicians.each { |musician| puts "listen to #{musician}" }

p name

# FOR - to iterate not on the values, but on the indexes
# for i in (0...musicians.size)
#   puts "#{i + 1} - #{musicians[i]}"
# end

# musicians.each_with_index do |musician, index|
#   puts "#{index + 1} - #{musician}"
# end
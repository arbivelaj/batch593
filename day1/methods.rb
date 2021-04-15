# Write some code which:
# takes a name as an input
# concatenates/interpolates the name with "Hi" and "."
# returns the output
# RE-USABLE on any input (string)

# method definition
def greet(name) # parameter
  return "Hi #{name}." # output
end

# executing/invoking the method 3 times
# puts greet("Arbi") # input: "Arbi"
# puts greet("Valerie").upcase # input: "Valerie"
# puts greet("Dion") # input: "Dion"

def good_morning
  my_name = "Arbi"
  "today is a great day!"
end


# a method which returns a person well-formatted full name
# arguments (input) first_name and a last_name

def full_name(first_name, last_name) # parameters
  return "this person is called #{first_name.capitalize} #{last_name.capitalize}"
end

puts full_name("armin", "kaltak") # arguments
puts full_name("arbi", "velaj")
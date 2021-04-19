# call it with one person
# call it 3 people

# def greet(people = {})
#   people.each do |key, person|
#     puts "Hello #{person}"
#   end
# end

# people = {first: "arbi", second: "pascalis"}
# people2 = {second: "pascalis"}
# people3 = {}

# greet(people)
# p "----"
# greet(people2)
# p "----"
# greet(people3)
# greet

# <h1 class='main-text' id='homepage-text'>Hello World</h1>

def tag(tag_name, content, attributes = {})
  closing_tag = "</#{tag_name}>"
  attributes_list = attributes.map {|key, value| " #{key}='#{value}'"}.join 
  opening_tag = "<#{tag_name}#{attributes_list}>"
  opening_tag + content + closing_tag
end


p tag("h1", "Hello World", {class: "main-text", id: "homepage-text"})
p tag("h1", "Hello World", {class: "main-text"})
p tag("h1", "Hello World", {})
p tag("h1", "Hello World")








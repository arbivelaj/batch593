team = ["marcel", "arbi", "valerie", "dion"]
    #     0          1       2         3

# # CRUD:

# # create
# # read
# # update
# # delete

# # read one element in my array #=> "valerie"
# # BY INDEX
# puts team[2]

# # create a new element in the array
# # APPEND
# team.push("pascalis")
# team << "leon"

# # update an element
# team[0] = team[0].capitalize
# team[0] = "John"

# # delete
# # by value
# team.delete("valerie")
# # by position (index)
# team.delete_at(0)

team = ["marcel", "arbi", "valerie", "dion"]

team.each do |member|
  puts "#{member} is in the lewagon munich team"
end

# iterator N 2
for member in team
  puts "#{member} is in the lewagon munich team"
end
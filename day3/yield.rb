# def timer
#   puts "i am starting the timer"
#   starting_time = Time.now

#   yield

#   elapsed_time = Time.now - starting_time
#   puts "elapsed time: #{elapsed_time}"
# end
# # define a variable outside of the method which allows me to
# # choose the duration of the timer
# timer do
#   puts "long task"
#   sleep(5)
#   puts "it was boring"
# end

# timer do
#   puts "quick task"
#   sleep(1)
# end



# take a first and last name
# return a sentence with the full name of the person (well-formatted)
# be able to say a welcome in a specific language, but also not do it

def full_name(first_name, last_name)
  fullname = first_name.capitalize + " " + last_name.capitalize
  yield(fullname)
  puts "have a nice day"
end

full_name("arbi", "velaj") do |full|
  puts "buongiorno #{full}"
end


full_name("zinedine", "zidane") do |full|
  puts "bonjour #{full}"
end

full_name("dion", "shahini") do |full|
  puts "#{full} is the lewagon driver"
  puts "mirdita"
end


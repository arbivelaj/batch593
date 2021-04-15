# asks the user for a price guess
# draws a random integer between 1 and 5
# compares the guess to the actual price
# if the price is correct, prints "you won"
# otherwise keeps asking for a guess (w/o drawing again)

puts "Welcome to the price is right!"
puts "what's the right price for this amazing ac milan shirt?"

guess = gets.chomp.to_i

price = rand(5) + 1
counter = 1
while price != guess
  puts "not the right choice! make a new one"
  guess = gets.chomp.to_i
  counter += 1
end

puts "you won, the right price was #{price}, it took you #{counter} attempts"
require_relative "acronym.rb"

puts "Welcome to our online acronomyzer"

puts "give me a sentence"
sentence = gets.chomp

acronym = acronymize(sentence)
puts "the acronym of '#{sentence}'"
puts "is '#{acronym}'"



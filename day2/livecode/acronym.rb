# define a method which expects one parameter (a sentence)
# def acronymize(sentence)
#   letters = []
#   # split the string to get an array of strings (words)
#   words = sentence.split
#   # iterate over the array, take each first letter from each word
#   words.each do |word|
#     # upcase them all
#     first_letter = word[0].upcase
#     # save them somewhere
#     letters << first_letter
#   end
#   # return them as a string (joined)
#   letters.join("")
# end

def acronymize(sentence)
  letters = []
  sentence.split.each { |word| letters << word[0].upcase }
  letters.join("")
end

# p acronymize("le wagon")
# signature test
# puts acronymize("") == ""
# puts acronymize("what the fuck") == "WTF"
# puts acronymize("be right back") == "BRB"
# puts acronymize("away from keyboard") == "AFK"

## adv challenge: create an interface in which we ask the user for a sentence
## and print the acronym from that sentence
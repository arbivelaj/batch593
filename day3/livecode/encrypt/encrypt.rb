# def encrypt(sentence)
#   # split the sentence into an array of its letters
#   shifted_letters = []
#   letters = sentence.split("")
#   # define the alphabet array
#   alphabet = ("A".."Z").to_a
#   # iterate over each letter (letters & whitespaces)
#   letters.each do |letter|
#     # IF is this letter an actual letter or a whitespace??
#     if letter == " "
#       # otherwise
#         # keep the whitespace
#       shifted_letters << " "
#     else
#       # assign a new letter, 3 positions shifted backwards
#       letter_index = alphabet.index(letter)
#       new_letter = alphabet[letter_index - 3]
#       shifted_letters << new_letter
#     end
#   end
#   shifted_letters.join("")
#   # join them into a big string  
# end

def encrypt(sentence)
  alphabet = ("A".."Z").to_a
  sentence.split("").map do |letter|
    letter == " " ? " " : alphabet[alphabet.index(letter) - 3]
  end.join("")
end


p encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
# => "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
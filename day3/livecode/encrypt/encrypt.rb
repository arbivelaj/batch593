
def encrypt(sentence)
  # split the sentence into an array of individual letters
  array_of_characters = sentence.upcase.split("")
  # define an array with the alphabet
  alphabet_array = ("A".."Z").to_a
  # iterate over each character, shift 3 times to the left
  shifted_array = array_of_characters.map do |character|
    character_index = alphabet_array.index(character)
    # check if the letter is included in the aalphabet array
    character_index.nil? ? " " : alphabet_array[character_index - 3]
  end
  # join all the shifted charcaters
  shifted_array.join
end








students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]


s = students.map do |student|
{name: student[0], age: student[1]}
end
p s

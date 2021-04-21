require "pry"

def frequencies(sentence)
  words = sentence.split
  freq = Hash.new
  words.each do |word|
    binding.pry
    if freq.key?(word)
      freq[word] += 1
    else
      freq[word] = 1
    end
  end
  freq
end

sentence = "ac milan is the only team in milan"
p frequencies(sentence)
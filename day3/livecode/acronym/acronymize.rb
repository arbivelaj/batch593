def acronymize(sentence)
  sentence.split.map { |word| word[0].upcase }.join("")
end
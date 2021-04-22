require_relative "animal"
require_relative "lion"
require_relative "meerkat"
require_relative "warthog"

simba = Lion.new("Simba")
pumbaa = Warthog.new("Pumbaa")
timon = Meerkat.new("Timon")

jungle = [simba, pumbaa, timon]

jungle.each do |animal|
  puts animal.talk
end

# https://stackoverflow.com/questions/1031273/what-is-polymorphism-what-is-it-for-and-how-is-it-used
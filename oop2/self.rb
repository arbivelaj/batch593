# class Castle
#   def initialize(name, ruler)
#     @name = name
#     @ruler = ruler
#   end

#   def details
#     "#{@name} is rules by #{ruler_name}"
#   end

#   def ruler_name
#     @ruler.upcase
#   end
# end

# dragonstone = Castle.new("Dragonstone", "targaryen")
# p dragonstone.details


class Butler
  attr_reader :house
  def initialize(name, house)
    @name = name
    @house = house
  end
end

class House
  attr_reader :butler
  def initialize(name)
    @name = name
    @butler = Butler.new("jimmy", self) 
  end
end

house = House.new("house of the rising sun")
p house.butler.house.butler
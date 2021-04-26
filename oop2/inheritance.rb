class Building
  attr_reader :name, :width, :length
  def initialize(name, width, length)
    @name = name
    @width = width
    @length = length
  end

  def floor_area
    @width * @length
  end
end


class House < Building
  # overwriting an inherited method
  def floor_area
    "private info"
  end
end

class SkyScraper < Building
  
end

class Castle < Building
  # specific behaviour
  def has_a_butler?
    @butler != nil
  end

  # extended an superclass method
  def floor_area
    super + 1000
  end
end

class Stadium < Building
  def initialize(name, width, length, team)
    super(name, width, length)
    @team = team
  end
end

house = House.new("house of the rising sun", 50, 50)
sky = SkyScraper.new("empire state building", 30, 70)
castle = Castle.new("Camelot", 500, 400)
stadium = Stadium.new("San Siro", 1000, 2000, "AC Milan")
p stadium, house, sky
p house.floor_area, sky.floor_area, castle.floor_area
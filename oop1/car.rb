class Car
  # attr_reader :engine_started
  # attr_writer :engine_started
  attr_accessor :color, :engine_started
  def initialize(color)
    @engine_started = false
    @color = color
  end

  def turn_on!
    @engine_started = true
  end

  # def paint(new_color)
  #   @color = new_color
  # end
  # attribute READER - GETTER

  # def engine_started
  #   @engine_started
  # end
end

my_red_panda = Car.new("red") # instance
armen_yellow_lambo = Car.new("yellow")
my_red_panda.paint("black")
# my_red_panda.add_brand("fiat")
armen_yellow_lambo.turn_on!

p my_red_panda.engine_started # attr_reader
my_red_panda.color = "white" # attr_writer
p my_red_panda.turn_on!


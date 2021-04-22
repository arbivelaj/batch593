class Animal
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def eat(food)
    "#{@name} eats a #{food}" # works, cos instance var is availbale inside the class
    # "#{name}" # works, cos it calls the method defined from the reader
    # "#{self.name}" # works as well
  end

  def self.phyla
    %w[Deuterostomia Ecdysozoa Lophotrochozoa Radiata]
  end
end
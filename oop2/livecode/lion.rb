require_relative "animal"

class Lion < Animal
  # specific behaviuor
  def talk
    "#{@name} roars"
  end
  
  # extending
  def eat(food)
    super(food) + ". Law of the Jungle!"
  end
end
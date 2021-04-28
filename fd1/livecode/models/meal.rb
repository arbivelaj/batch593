class Meal
  attr_accessor :id
  attr_reader :price, :name
  def initialize(attr = {})
    @id = attr[:id]
    @name = attr[:name]
    @price = attr[:price]
  end

  def self.headers
    ["id", "name", "price"]
  end

  def values
    [@id, @name, @price]
  end
end
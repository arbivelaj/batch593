class Customer
  attr_accessor :id
  attr_reader :address, :name
  def initialize(attr = {})
    @id = attr[:id]
    @name = attr[:name]
    @address = attr[:address]
  end

  def self.headers
    ["id", "name", "address"]
  end

  def values
    [@id, @name, @address]
  end
end
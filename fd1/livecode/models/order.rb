class Order
  attr_accessor :id
  attr_reader :meal, :employee, :customer
  def initialize(attr = {})
    @id = attr[:id]    
    @delivered = attr[:delivered] || false     
    @meal = attr[:meal]    
    @employee = attr[:employee]    
    @customer = attr[:customer]    
  end

  def deliver!
    @delivered = true
  end

  def delivered?
    @delivered
  end
end

# order with the second meal, the first employee, the second customer

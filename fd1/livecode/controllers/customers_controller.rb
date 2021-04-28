class CustomersController
  def initialize(customer_repository, view)
    @customer_repository = customer_repository
    @view = view 
  end

  def list
    customers = @customer_repository.all
    @view.display_customers(customers)
  end

  def create
    name = @view.ask_for("name")
    address = @view.ask_for("address")
    customer = Customer.new(name: name, address: address)
    @customer_repository.add(customer)
  end
end
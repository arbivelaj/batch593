class OrdersController
  def initialize(view,order_repository, meal_repository, employee_repository, customer_repository)
    @order_repository = order_repository
    @meal_repository = meal_repository
    @employee_repository = employee_repository
    @customer_repository = customer_repository
    @view = view
  end

  def list
    orders = @order_repository.all
    @view.display_orders(orders) 
  end

  def create
    meals = @meal_repository.all
    @view.display_meals(meals)
    meal_id = @view.ask_for("meal id")
    meal = @meal_repository.find(meal_id.to_i)

    employees = @employee_repository.all
    @view.display_employees(employees)
    employee_id = @view.ask_for("employee id")
    employee = @employee_repository.find(employee_id.to_i)

    customers = @customer_repository.all
    @view.display_customers(customers)
    customer_id = @view.ask_for("customer id")
    customer = @customer_repository.find(customer_id.to_i)

    new_order = Order.new(meal: meal, employee: employee, customer: customer)
    @order_repository.add(new_order)
  end
end
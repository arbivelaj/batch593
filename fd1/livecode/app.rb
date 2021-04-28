require_relative "router"
require_relative "views/view"

require_relative "models/meal"
require_relative "repositories/meal_repository"
require_relative "controllers/meals_controller"

require_relative "models/customer"
require_relative "repositories/customer_repository"
require_relative "controllers/customers_controller"

require_relative "models/employee"
require_relative "repositories/employee_repository"
require_relative "controllers/sessions_controller"

v = View.new

mr = MealRepository.new("data/meals.csv")
mc = MealsController.new(mr, v)

cr = CustomerRepository.new("data/customers.csv")
cc = CustomersController.new(cr, v)

er = EmployeeRepository.new("data/employees.csv")
sc = SessionsController.new(er, v)

r = Router.new(sc, mc, cc)
r.run
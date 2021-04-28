# order mvc
# order has a 1-to-Many association with meals, employees, customers
# we initialize the order model with instances of meal,employee,customer

m = Meal.new()
e = Employee.new()
c = Customer.new()

order = Order.new(meal: m, employee: e, customer: c)

# how can i write the meal,employee and customer instances in the CSV???
# the csv doesn't know about instances
# the csv will store the references to the meal_id, employee_id, customr_id

id,date,meal_id,employee_id,customer_id # CSV
1,today,2,3,10
# when loading the csv, we need to use those references to find
# the corresponding instances
# -> order repo is initialized with all the other repos

# same goes for the controller, check last slides from yesterday's lectuere
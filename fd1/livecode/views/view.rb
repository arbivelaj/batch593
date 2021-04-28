class View
  def display_meals(meals)
    meals.each do |meal|
      puts "#{meal.id} - #{meal.name} - #{meal.price}"
    end    
  end

  def display_orders(orders)
    orders.each do |order|
      delivered = order.delivered? ? "[X]" : "[ ]"
      puts "#{delivered} order #{order.id}: a #{order.meal.name} from #{order.customer.name}, managed by #{order.employee.username}"
    end
  end

  def display_customers(customers)
    customers.each do |customer|
      puts "#{customer.id} - #{customer.name} - #{customer.address}"
    end    
  end

  def display_employees(employees)
    employees.each_with_index do |employee|
      puts "#{employee.id} - #{employee.username}"
    end    
  end

  def congratulation
    puts "welcome to our app"
  end

  def wrong_credentials
    puts "wrong credentials"
  end

  def ask_for(something)
    puts "give me a #{something}"
    gets.chomp    
  end
end
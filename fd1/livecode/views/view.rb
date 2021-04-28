class View
  def display_meals(meals)
    meals.each_with_index do |meal, index|
      puts "#{index + 1} - #{meal.name} - #{meal.price}"
    end    
  end

  def display_customers(customers)
    customers.each_with_index do |customer, index|
      puts "#{index + 1} - #{customer.name} - #{customer.address}"
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
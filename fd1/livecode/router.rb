class Router
  def initialize(sessions_controller, meals_controller, customers_controller, orders_controller)
    @meals_controller = meals_controller
    @sessions_controller = sessions_controller
    @customers_controller = customers_controller
    @orders_controller = orders_controller
    @running = true
  end

  def run
    puts "welcome to Deliveroo!"
    logged_user = @sessions_controller.log_in
    puts "nice to see you again, #{logged_user.username}"
    while @running
      display_actions
      choice = gets.chomp.to_i
      dispatch(choice)
    end
    puts "thank you for using our app"
  end

  def display_actions
    puts "what do you want to do?"
    puts "1 - list meals"
    puts "2 - add meal"
    puts "3 - list customers"
    puts "4 - add customer"
    puts "5 - list orders"
    puts "6 - add order"
    puts "9 - exit"
  end

  def dispatch(choice)
    case choice
    when 1 then @meals_controller.list
    when 2 then @meals_controller.create
    when 3 then @customers_controller.list
    when 4 then @customers_controller.create
    when 5 then @orders_controller.list
    when 6 then @orders_controller.create
    when 9 then @running = false  
    else
      puts "wrong choice"
    end
  end


end
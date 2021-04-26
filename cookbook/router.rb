class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    puts "welcome to ou cookbook!"
    while @running
      display_actions
      choice = gets.chomp.to_i
      dispatch(choice) 
    end
    puts "thanks for using our cookbook!"
  end

  def display_actions
    puts "what do you want to do?"
    puts "1 - list"
    puts "2 - create"
    puts "3 - delete"
    puts "4 - import"
    puts "9 - stop"
  end

  def dispatch(choice)
    case choice
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.delete
    when 4 then @controller.import
    when 9 then @running = false
    else
      puts "wrong choice"
    end
  end
end
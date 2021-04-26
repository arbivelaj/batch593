# loop to ask the user what he wants to do
class Router
  def initialize(tasks_controller)
    @tasks_controller = tasks_controller
  end
  def run
    loop do
      display_choices
      choice = gets.chomp.to_i
      puts "------"
      dispatch_choice(choice)
    end
  end

  def dispatch_choice(choice)
    case choice
    when 1 then @tasks_controller.list
    when 2 then @tasks_controller.create
    when 3 then @tasks_controller.mark_as_done
    when 4 then @tasks_controller.delete
    else
      puts "wrong choice"
    end
  end

  def display_choices
    puts "welcome to our TODO manager"
    puts "what do you want to do?"
    puts "1 - list all tasks"
    puts "2 - add a task"
    puts "3 - to mark as done"
    puts "4 - to delete"
  end
end
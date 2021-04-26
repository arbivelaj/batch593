class View
  def display(tasks)
    tasks.each_with_index do |task, index|
      done = task.done? ? "[X]" : "[ ]"
      puts "#{done} #{index + 1} - #{task.description}"
    end
  end

  def ask_for_description
    puts "give me a description"
    gets.chomp
  end

  def ask_for_index
    puts "which one?"
    gets.chomp.to_i - 1
  end
end
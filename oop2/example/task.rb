require "csv"
class Task
  def initialize(title, description)
    @title = title
    @description = description
  end
end
tasks = []

CSV.foreach("tasks.csv") do |csv_line|
  task = Task.new(csv_line[0], csv_line[1])
  tasks << task
end

new_task = Task.new("last", "to be added to the csv")
tasks << new_task

CSV.open("tasks.csv", "wb") do |csv_row|
  tasks.each do |task|
    csv_row << ?? # push inside an array with task desc and task name
  end
end
p tasks
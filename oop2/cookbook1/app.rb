# require relative
# initialization
require_relative "router"
require_relative "task"
require_relative "task_repository"
require_relative "tasks_controller"
require_relative "view"
tr = TaskRepository.new
v = View.new
tc = TasksController.new(tr, v)

r = Router.new(tc)
r.run
class TasksController
  def initialize(task_repository, view)
    @task_repository = task_repository
    @view = view
  end

  def list # FEATURE
    display_all
  end

  def create
    # FE: ask the user for a description
    description = @view.ask_for_description
    # use that description to create an instance of task
    task = Task.new(description)
    # BE: store that instance into my repo
    @task_repository.add_task(task)
  end

  def mark_as_done
    display_all
    index = @view.ask_for_index
    task = @task_repository.find(index)
    task.mark_as_done!
  end

  def delete
    display_all
    index = @view.ask_for_index
    task = @task_repository.remove(index)
  end
  
  private

  def display_all
    # BE: gets all the tasks from the repo
    tasks = @task_repository.all
    # FE: it displays a nice list of tasks
    @view.display(tasks)
  end
end
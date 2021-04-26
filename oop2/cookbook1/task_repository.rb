class TaskRepository
  def initialize
    @tasks = []
    load_csv
  end
  # list
  def all
    @tasks
  end
  # create
  def add_task(task)
    @tasks << task
    write_csv
  end
  # update
  def find(index)
    @tasks[index]
  end
  # delete
  def remove(index)
    @tasks.delete_at(index)
    write_csv
  end

  private

  def write_csv
    CSV.open(..., "wb") do |csv_row|

      csv_row << ??? # each task, write one csv line
    end
  end

  def load_csv
    CSV.foreach(...) do |csv_row|
      # create an instance of task
      # push that instance into @tasks
    end
  end
end


class TaskEntry
  def initialize(task) 
    @task = task 
    @completed_tasks = []
  end

  def task  
      return @task
  end

  def mark_done!
    @completed_tasks << @task
  end

  def done?
    @completed_tasks.include?(@task)
  end
end
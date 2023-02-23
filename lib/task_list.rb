class TaskList
  def initialize
    @task_library = []
    @completed_tasks = []
  end

  def add(task_entry) 
    @task_library << task_entry
  end

  def incomplete
    return @task_library
  end

  def complete
    @task_library.each do |x|
      if x.done?
        @completed_tasks << x
      else
      end   
    end
    return @completed_tasks
  end

  def give_up!
    @task_library.each do |x|
      x.mark_done!
    end
    return @completed_tasks
  end
end
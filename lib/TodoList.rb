class TodoList
  def initialize 
    @tasks_listed = []
  end 

  def todo(task)
    fail "Task cannot be an empty string" if task == ""
    unless @tasks_listed.include?(task.downcase)
      @tasks_listed << task.downcase
    end
  end

    def view_tasks
        if @tasks_listed == []
            return "You have no tasks" 
        else 
            return @tasks_listed
        end
    end

    def completed_task(task)
      if @tasks_listed.include?(task.downcase)
        return @tasks_listed.delete(task.downcase)
      else  
        fail "This task is not listed" 
      end
    end 

end
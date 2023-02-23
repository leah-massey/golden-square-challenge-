class TodoList
    def initialize
    @tasks_listed = []
    end 

    def todo(task)
        fail "Task cannot be an empty string" if task == ("")
        @tasks_listed << task.downcase unless @tasks_listed.include?(task.downcase)
    end

    def view_tasks
        if @tasks_listed == []
            return "You have no tasks" 
        else 
            return @tasks_listed
        end
    end

    def completed_task(task)
        fail "This task is not listed" unless @tasks_listed.include?(task)
        @tasks_listed.delete(task.downcase)
    end 

end
{{PROBLEM}} Class Design Recipe
1. Describe the Problem
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

Put or write the user story here. Add any clarifying notes you might have.

2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

class TodoList
    def initialize
    # ...
    end 

    def todo(task)
    # throws an exception if no task set
    # takes an argument as a string and stores it
    # no return value
    end

    def view_tasks
    # returns a list of strings of all the tasks entered
    end

    def completed_task(task)
    #removes task form the list
    end


3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
# new_list = TodoList.new
# new_list.view_tasks 
# => "You have no tasks"

# 2
# new_list = TodoList.new
# new_list.todo("water plants")
# new_list.view_tasks 
# => ["water plants"]

# 3
# new_list = TodoList.new
# new_list.todo("water plants")
# new_list.todo("buy milk")
# new_list.view_tasks 
# => ["water plants", "buy milk"]

# 4
# new_list = TodoList.new
# new_list.todo("water plants")
# new_list.todo("buy milk")
# new_list.completed_task("water plants") 
# new_list.view_tasks
# => ["buy milk"]

# 5
# new_list = TodoList.new
# new_list.todo("water plants")
# new_list.todo("buy milk")
# new_list.completed_task("water plants") 
# new_list.completed_task("buy milk") 
# new_list.view_tasks 
# => "You have no tasks"

# 6
# new_list = TodoList.new
# new_list.todo("water plants")
# new_list.todo("buy milk")
# new_list.todo("") 
# => error code - Task cannot be an empty string

# 7
# new_list = TodoList.new
# new_list.completed_task("buy milk")
# => error code - "This task is not listed" 

# 8
# new_list = TodoList.new
# new_list.todo(Buy milk)
# new_list.completed_task("buy milk")
# new_list.view_tasks
# => "You have no tasks"

# 9
# new_list = TodoList.new
# new_list.todo("water plants")
# new_list.todo("buy milk")
# new_list.todo("buy milk")
# new_list.view_tasks 
# => ["water plants", "buy milk"]


Encode each example as a test. You can add to the above list as you go.

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
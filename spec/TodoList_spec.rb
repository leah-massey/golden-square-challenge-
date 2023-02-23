require 'TodoList'

RSpec.describe TodoList do 

  #describe "#viewtasks" do 

    it "returns 'You have no tasks' if no tasks have been added" do 
      new_list = TodoList.new
      expect(new_list.view_tasks).to eq "You have no tasks"
    end

    it "if one task added, it returns that task" do 
      new_list = TodoList.new
      new_list.todo("water plants")
      expect(new_list.view_tasks).to eq ["water plants"]
    end

    it "returns all tasks if multiple tasks have been added" do 
      new_list = TodoList.new
      new_list.todo("water plants")
      new_list.todo("buy milk")
      expect(new_list.view_tasks).to eq ["water plants", "buy milk"]
    end
  

    it "removes tasks from the list" do 
        new_list = TodoList.new
        new_list.todo("water plants")
        new_list.todo("buy milk")
        new_list.completed_task("water plants") 
        remaining_tasks = new_list.view_tasks
  
        expect(remaining_tasks).to eq ["buy milk"]
    end

    it "retuns 'You have no tasks' if all todos have been completed" do 
        new_list = TodoList.new
        new_list.todo("water plants")     
        new_list.todo("buy milk")
        new_list.completed_task("water plants") 
        new_list.completed_task("buy milk") 
        expect(new_list.view_tasks).to eq "You have no tasks"
    end 

    it "is not case sensitive" do
        new_list = TodoList.new
        new_list.todo("Buy milk")
        new_list.completed_task("buy milk")
        expect(new_list.view_tasks).to eq "You have no tasks"
    end 

    it "fails when input is empty string" do
        new_list = TodoList.new
        new_list.todo("water plants")
        new_list.todo("buy milk")
        expect { new_list.todo("") }.to raise_error "Task cannot be an empty string"
    end

    it "fails when user attempts to complete a task that is not listed" do 
        new_list = TodoList.new
        expect { new_list.completed_task("buy milk") }.to raise_error "This task is not listed"
    end

    it "does not add task to the list is task already present" do
        new_list = TodoList.new
        new_list.todo("water plants")
        new_list.todo("buy milk")
        new_list.todo("Buy milk")
        expect(new_list.view_tasks).to eq ["water plants", "buy milk"]
    end
  end

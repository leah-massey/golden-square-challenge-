require 'task_entry'

RSpec.describe TaskEntry do 
  
  it "creates a new task" do 
    new_task = TaskEntry.new("laundry")
    expect(new_task.task).to eq "laundry"
  end

  it "marks task as done by moving into @completed_tasks" do 
    new_task = TaskEntry.new("meditate")
    new_task.mark_done!
    expect(new_task.done?).to eq true
  end 

end


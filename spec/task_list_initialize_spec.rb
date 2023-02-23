require 'task_list'
require 'task_entry'

RSpec.describe "initialize" do 

  it "adds a task to the library" do 
    new_list = TaskList.new
    new_entry = TaskEntry.new("washing")
    new_list.add(new_entry)
    library = new_list.incomplete
    expect(library).to eq [new_entry]
  end 

  it "returns all non-done task entries in the library" do 
    new_list = TaskList.new
    new_entry_1 = TaskEntry.new("washing")
    new_entry_2 = TaskEntry.new("shopping")
    new_list.add(new_entry_1)
    new_list.add(new_entry_2)
    library = new_list.incomplete
    expect(library).to eq [new_entry_1, new_entry_2]
  end

  it "returns all non-done task entries in the library" do 
    new_list = TaskList.new
    new_entry_1 = TaskEntry.new("washing")
    new_entry_2 = TaskEntry.new("shopping")
    new_list.add(new_entry_1)
    library = new_list.incomplete
    expect(library).to eq [new_entry_1]
  end

  it "returns all non-done task entries in the library" do 
    new_list = TaskList.new
    new_entry_1 = TaskEntry.new("washing")
    new_entry_2 = TaskEntry.new("shopping")
    new_list.add(new_entry_1)
    new_list.add(new_entry_2)
    library = new_list.incomplete
    expect(library).to eq [new_entry_1, new_entry_2]
  end

  it "returns all completed task_entries" do 
    new_list = TaskList.new
    new_entry_6 = TaskEntry.new("washing")
    new_entry_7 = TaskEntry.new("shopping")
    new_list.add(new_entry_6)
    new_list.add(new_entry_7)
    new_entry_6.mark_done!
    new_entry_7.mark_done!
    expect(new_list.complete).to eq [new_entry_6, new_entry_7]
  end 

  it "returns all completed task_entries" do 
    new_list = TaskList.new
    new_entry_6 = TaskEntry.new("washing")
    new_entry_7 = TaskEntry.new("shopping")
    new_list.add(new_entry_6)
    new_list.add(new_entry_7)
    new_entry_6.mark_done!
    expect(new_list.complete).to eq [new_entry_6]
  end 

  describe '#give_up' do 
    it "marks all task entries as complete when none are yet completed" do 
      new_list = TaskList.new
    new_entry_6 = TaskEntry.new("washing")
    new_entry_7 = TaskEntry.new("shopping")
    new_list.add(new_entry_6)
    new_list.add(new_entry_7)
    new_list.give_up!
    expect(new_list.complete).to eq [new_entry_6, new_entry_7] 
    end

    it "marks all entries as completed when there is a mix of completed and not completed" do 
      new_list = TaskList.new
      new_entry_6 = TaskEntry.new("washing")
      new_entry_7 = TaskEntry.new("shopping")
      new_list.add(new_entry_6)
      new_list.add(new_entry_7)
      new_entry_6.mark_done!
      new_list.give_up!
      expect(new_list.complete).to eq [new_entry_6, new_entry_7] 
    end
  end

end
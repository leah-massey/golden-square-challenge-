require "diary.rb"
require "diary_entry2.rb"

RSpec.describe "Diary and diary_entry integration" do

  xit "when we add an entry it adds diary entry to the library" do 
    new_diary = Diary.new
    new_entry1 = DiaryEntry.new("Monday", "I swam")
    new_diary.add(new_entry1)
    expect(new_diary.all).to eq ["Monday", "I swam"]
  end
  
  xit "returns all diary entries that have been added" do 
    new_diary = Diary.new
    new_entry1 = DiaryEntry.new("Monday", "I swam")
    new_entry2 = DiaryEntry.new("three", "four")
    new_diary.add(new_entry1)
    expect(new_diary.all).to eq ["Monday", "I swam"]
  end

  xit "returns the number of words in all diary entries that have been added" do 
    new_diary = Diary.new
    new_entry1 = DiaryEntry.new("one", "two")
    new_entry2 = DiaryEntry.new("three", "four five")
    new_entry1.count_words
    new_entry2.count_words
    new_diary.add(new_entry1)
    new_diary.add(new_entry2)
    expect(new_diary.count_words).to eq 3
  end

  xit "returns diary entry that closest matches the readers wpm and reading time (but not over)" do 
    new_diary = Diary.new
    new_entry1 = DiaryEntry.new("one", "two")
    new_entry2 = DiaryEntry.new("three", "four " *10)
    
    expect(new_diary.find_best_entry_for_reading_time(11, 1)).to eq new_entry_1
  end

  xit "returns diary entry that closest matches the readers wpm and reading time (but not over)" do 
    new_diary = Diary.new
    new_entry1 = DiaryEntry.new("one", "two")
    new_entry2 = DiaryEntry.new("three", "four " *10)
    expect(new_diary.find_best_entry_for_reading_time(9, 1)).to eq new_entry_1
  end

end
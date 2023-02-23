require "diary.rb"
require "diary_entry2.rb"

RSpec.describe "Diary and diary_entry integration" do

  it "when we add an entry it adds diary entry to the library in Diary" do 
    new_diary = Diary.new
    new_entry1 = DiaryEntry.new("Monday", "I swam")
    new_diary.add(new_entry1)
    expect(new_diary.all).to eq [new_entry1] 
  end
  
  it "returns all diary entries that have been added" do 
    new_diary = Diary.new
    new_entry1 = DiaryEntry.new("Monday", "I swam")
    new_entry2 = DiaryEntry.new("three", "four")
    new_diary.add(new_entry1)
    new_diary.add(new_entry2)
    expect(new_diary.all).to eq [new_entry1, new_entry2]
  end

  it "returns all diary entries that have been added" do 
    new_diary = Diary.new
    new_entry1 = DiaryEntry.new("Monday", "I swam")
    new_entry2 = DiaryEntry.new("three", "four")
    new_diary.add(new_entry2)
    expect(new_diary.all).to eq [new_entry2]
  end

  it "returns the number of words in all diary entries that have been added" do 
    new_diary = Diary.new
    new_entry1 = DiaryEntry.new("one", "two")
    new_entry2 = DiaryEntry.new("three", "four five")
    new_diary.add(new_entry1)
    new_diary.add(new_entry2)
    expect(new_diary.count_words).to eq 3
  end

  it "returns reading time required to read all added entries" do 
    new_diary = Diary.new
    new_entry1 = DiaryEntry.new("one", "two") 
    new_diary.add(new_entry1)
    expect(new_diary.reading_time(1)).to eq 1
  end

  it "returns reading time required to read all added entries" do 
    new_diary = Diary.new
    new_entry1 = DiaryEntry.new("one", "two three four") 
    new_diary.add(new_entry1)
    expect(new_diary.reading_time(2)).to eq 2
  end

  it "returns reading time required to read all added entries" do 
    new_diary = Diary.new
    new_entry1 = DiaryEntry.new("one", "two")
    new_entry2 = DiaryEntry.new("three", "four " *10)
    new_diary.add(new_entry1)
    new_diary.add(new_entry2)
    expect(new_diary.reading_time(1)).to eq 11
  end

  it "returns diary entry that closest matches the readers wpm and reading time (but not over)" do 
    new_diary = Diary.new
    new_entry1 = DiaryEntry.new("one", "two")
    new_entry2 = DiaryEntry.new("three", "four " *10)
    new_diary.add(new_entry1)
    new_diary.add(new_entry2)
    expect(new_diary.find_best_entry_for_reading_time(9, 1)).to eq new_entry1
  end

  it "returns diary entry that closest matches the readers wpm and reading time (but not over)" do 
    new_diary = Diary.new
    new_entry1 = DiaryEntry.new("one", "two")
    new_entry2 = DiaryEntry.new("three", "four " *10)
    new_entry3 = DiaryEntry.new("five", "six seven eight")
    new_diary.add(new_entry1)
    new_diary.add(new_entry2)
    new_diary.add(new_entry3)
    expect(new_diary.find_best_entry_for_reading_time(9, 1)).to eq new_entry3
  end

end
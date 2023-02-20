require 'diary_entry'

RSpec.describe DiaryEntry do 
    it "returns the title of the entry as a string" do 
        new_entry = DiaryEntry.new("The Park", "I went for a run.")
        expect(new_entry.title).to eq "The Park" 
    end 
    it "returns the content of the entry as a string" do 
        new_entry = DiaryEntry.new("The Park", "I went for a run.")
        expect(new_entry.contents). to eq "I went for a run."
    end

    it "returns the number of words in teh contents as an integer" do 
        new_entry = DiaryEntry.new("The Park", "I went for a run. " *10 )
        expect(new_entry.count_words).to eq 50
    end

    context "while running the 'reading_time' function" do 

        it "returns the estimated reading time needed for reading the contents of the entry as an integer" do 
            new_entry = DiaryEntry.new("The Park", "I went for a run. " * 2000)
            expect(new_entry.reading_time(20)).to eq 500
        end

        it "returns 0 if the string is empty" do
            new_entry = DiaryEntry.new("The Park", "" )
            expect(new_entry.reading_time(20)).to eq 0 
        end

        it "returns 1 if the string is empty" do
            new_entry = DiaryEntry.new("The Park", "hello" )
            expect(new_entry.reading_time(20)).to eq 1 
        end

        it "returns 0 if the string is empty" do
            new_entry = DiaryEntry.new("The Park", "hello" )
            expect(new_entry.reading_time(20)).to eq 1 
        end

        it "rounds up to the nearest whole minute" do
            new_entry = DiaryEntry.new("The Park", "Did a run " * 101 )
            expect(new_entry.reading_time(20)).to eq 16 
        end

        it "returns 1 if the string is less than wpm value" do
            new_entry = DiaryEntry.new("The Park", "Did a run " * 101 )
            expect(new_entry.reading_time(20)).to eq 16 
        end

    end

    context "when 'reading_chunk' is called" 
        it "" do 
            new_entry = DiaryEntry.new("The Park", "Ran " * 200 )
            expect(new_entry.reading_chunk(10, 2)).to eq "Ran " * 19 + "Ran"
        end 

        it "" do 
            new_entry = DiaryEntry.new("The Park", "I went running along the foreshore of the embankment and did a spot of mudlarking" * 200 )
            expect(new_entry.reading_chunk(10, 1)).to eq "I went running along the foreshore of the embankment and"
        end 

        
    end 

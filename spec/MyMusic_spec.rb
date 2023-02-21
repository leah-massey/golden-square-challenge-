require "MyMusic"

RSpec.describe MyMusic do 

    describe "#view_songlist" do 
        
        it "returns one song if one song added" do 
            new_music_list = MyMusic.new
            new_music_list.add("Toxic")
            expect(new_music_list.view_songlist).to eq ["Toxic"]
        end

        it "returns all songs added to songlist" do 
            new_music_list = MyMusic.new
            new_music_list.add("Toxic")
            new_music_list.add("Life's A Beach")
            expect(new_music_list.view_songlist).to eq ["Toxic", "Life's A Beach"]
        end

        it "updates all added songs to have first letter of each word capitalized" do 
            new_music_list = MyMusic.new
            new_music_list.add("Toxic")
            new_music_list.add("life's A Beach")
            expect(new_music_list.view_songlist).to eq ["Toxic", "Life's A Beach"]
        end

        it "fails if called but songlist is empty" do
            new_music_list = MyMusic.new
            expect { new_music_list.view_songlist }.to raise_error "List is empty"
        end

    end 

    it "fails if empty string added" do
        new_music_list = MyMusic.new
        expect { new_music_list.add("") }.to raise_error "This is not a song"
    end

    it "does not add a song is song has already been added" do 
        new_music_list = MyMusic.new
        new_music_list.add("Toxic")
        new_music_list.add("toxic")
        expect(new_music_list.view_songlist).to eq ["Toxic"]
    end

    it "fails if argument is not a string" do 
        new_music_list = MyMusic.new
        expect { new_music_list.add(7) }.to raise_error "Song needs to be a string"
    end
        

        
end
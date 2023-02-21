class MyMusic

    def initialize
        @songlist = []
    end

    def add(song)
        fail "Song needs to be a string" unless song.is_a?(String)
        fail "This is not a song" if song == ""
        
        correct_format = song.split(" ").map do |word|
            word.capitalize
        end
        
        updated_song = correct_format.join(" ")
        @songlist << updated_song unless @songlist.include?(updated_song)
    end

    def view_songlist
        fail "List is empty" if @songlist == []
        return @songlist
    end
end


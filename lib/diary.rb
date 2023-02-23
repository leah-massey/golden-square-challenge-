

class Diary
    def initialize
        @all_entries = []
        
    end
  
    def add(entry) # entry is an instance of DiaryEntry
      @all_entries << entry

        # Returns nothing
    
    end
  
    def all
      return @all_entries# Returns a list of instances of DiaryEntry
    end
  
    def count_words 
      sum = 0
      
      @all_entries.each do |x|
        sum += x.count_words
      end
  
      return sum
    
    end
  
    def reading_time(wpm) 

      words_to_read = 0
      
      @all_entries.each do |x|
        words_to_read += x.count_words
      end

      time =  (words_to_read / wpm.to_f)
      return time.ceil
  
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)

      words_I_can_read = wpm * minutes 

      entries_I_have_time_for = []

      @all_entries.each do |entry|
        if entry.count_words <= words_I_can_read 
          entries_I_have_time_for << entry.count_words
        else
        end
      end

      entries_I_have_time_for.sort!
      length_of_return_entry = entries_I_have_time_for[-1]

      @all_entries.each do |entry|
        return entry if entry.count_words == length_of_return_entry 
      end

      
    


    
      # run each do on @all_entries 
      # if length is <= to time_available
      # push into new array 
      # sort array by length 
      # return longest length 



          # `wpm` is an integer representing the number of words the user can read
          # per minute.
          # `minutes` is an integer representing the number of minutes the user
          # has to read.
      # Returns an instance of diary entry representing the entry that is closest 
      # to, but not over, the length that the user could read in the minutes they
      # have available given their reading speed.
    
  end
end
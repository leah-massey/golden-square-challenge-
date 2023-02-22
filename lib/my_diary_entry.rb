#Paired with Paul Lazar 

class MyDiaryEntry
  def initialize(title, contents) #title and contents are strings
    @title = title
    @contents = contents
    @value_to_start_at = 0
  end

  def title  
    return @title 
  end

  def contents
     @contents
  end

  def count_words
    @contents.split(" ").count
  end

  def reading_time(wpm)
    fail "This is not a proper reading time" if wpm == 0
    if count_words == 1 
      return 1
    else 
      return (count_words / wpm.to_f).ceil
    end   
  end

  def reading_chunk(wpm, minutes) 
      words = @contents.split(" ")
      number_of_words_to_read = wpm * minutes
      start_value = @value_to_start_at
      end_value =  @value_to_start_at + number_of_words_to_read
      if end_value >= count_words
        @value_to_start_at = 0
      else 
        @value_to_start_at = end_value
      end 
      return words[start_value...end_value].join(" ")
  end
end




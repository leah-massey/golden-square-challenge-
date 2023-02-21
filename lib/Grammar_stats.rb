class GrammarStats
    def initialize
        @total_number_of_texts = 0
        @number_of_texts_true = 0
    end
  
    def check(text)
       fail "You must enter a text" if text == ("")
       fail "You must enter strings only" unless text.is_a?(String)
        
       words = text.split(" ")
       @total_number_of_texts += 1
       
       if (words[0] == words[0].capitalize) && (words[-1][-1] == ".")
            @number_of_texts_true += 1        
            return true
       else
            return false
       end
    end
  
    def percentage_good

        total_texts = @total_number_of_texts 
        texts_true = @number_of_texts_true
        percentage = ((texts_true / total_texts.to_f) * 100).ceil

        return percentage

    end
  end

  
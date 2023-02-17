def is_task?(text)

    fail "You must enter a string" unless text.is_a?(String)
    fail "You have entered nothing" if text == ""

    upcase_text = text.upcase.split(" ")
    
    unless upcase_text.include?("#TODO")
        return false
    end

    if upcase_text.length == 1
        return false
    else 
        return true
    end


end
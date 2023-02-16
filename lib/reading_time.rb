def reading_time(text)

    fail "This is not a text" unless text.is_a?(String)
    return "You have nothing to read" if text == ""     
    
    "#{text.split.length*0.3} seconds"
   
end
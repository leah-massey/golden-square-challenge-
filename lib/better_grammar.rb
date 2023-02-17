def better_grammar(text)

    fail "Input must be a string" unless text.is_a?(String)

    return "You have not written any content" if text == ""

    if text[-1] == "."
        new_text = text
    else 
        new_text = text + "."
    end

    word = new_text.split(" ")
    new_text.gsub(word[0], word[0].capitalize)
    

    


end
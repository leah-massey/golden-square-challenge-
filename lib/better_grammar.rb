def better_grammar(text)

    if text[-1] == "."
        new_text = text
    else 
        new_text = text + "."
    end

    word = new_text.split(" ")
    new_text.gsub(word[0], word[0].capitalize)
    

    


end
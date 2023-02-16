def count_words(string)

    unless string.is_a?(String) 
        return 'This was not a string!' 
    else
        return string.split.length
    end

end
def make_snippet(string)

    words = string.split(" ")

        if words.length <= 5
            words[0..4].join(" ")
        elsif words.length > 5
            words[0..4].push("...").join(" ")
        end
end
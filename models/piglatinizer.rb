class PigLatinizer

    def piglatinize_word(word)
        if !!word.capitalize.match(/\A+[AEIOU]/)
            "#{word}way"
        else
           i = word.index(/[aeiou]/)
           after_v = word[i..word.length]
           other_side = word.split(/[aeiou]/).first
           after_v + other_side + "ay"
        end
    end
    
    def piglatinize(text)
        array = text.split(" ")
        array_02 = array.map {|x| piglatinize_word(x)}
        array_02.join(" ")
    end

end


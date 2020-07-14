class PigLatinizer

    def piglatinize_word(word)
        if !!word.capitalize.match(/\A+[AEIOU]/) #regex magic, no idea wtf this is. But it finds out if a word starts with a vowel, caps and downcased
            "#{word}way"
        else
           i = word.index(/[aeiou]/) #gets the index of the first vowel
           after_v = word[i..word.length] # using that slice the word
           other_side = word.split(/[aeiou]/).first #get the other side of the word seperately
           after_v + other_side + "ay"
        end
    end
    
    def piglatinize(text) #using method above, for a sentence.
        array = text.split(" ")
        array_02 = array.map {|x| piglatinize_word(x)}
        array_02.join(" ")
    end

end


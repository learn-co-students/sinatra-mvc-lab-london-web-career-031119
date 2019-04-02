class PigLatinizer
  def piglatinize(phrase)
    phrase.split.map { |word| piglatinize_word(word) }.join(" ")
  end

  def piglatinize_word(word)
    # if the word starts with vowel, add "way" if vowel = true or "ay" otherwise at end
    # else, set the "start_w_vowel" to false and move that consonant to the end
    # repeat from the start
    if is_vowel?(word[0])
      return word + "way"
    else
      new_word = word

      word.split("").each do |char|
        if is_vowel?(char)
          return new_word + "ay"
        else
          new_word = new_word[1..new_word.size - 1] + new_word[0]
        end
      end

      new_word

    end
  end

  def is_vowel?(char)
    if char
      char.scan(/[aeiouAEIOU]/).size == 1 ? true : false
    else
      false
    end
  end

end
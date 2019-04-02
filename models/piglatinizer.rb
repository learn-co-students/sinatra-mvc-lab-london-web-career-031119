class PigLatinizer

  def piglatinize(str)
    str_splited = str.split(' ')
    words = str_splited.map {|word| piglatinize_word(word)}
    words.join(' ')
  end

  def piglatinize_word(word)
    first_letter = word[0].downcase
    second_letter = word[1]
    third_letter = word[2]

    if ['a', 'e', 'i', 'o', 'u'].include?(first_letter)
      word + 'way'
    else
      final_word = []
      final_word << word[0]

      if ['a', 'e', 'i', 'o', 'u'].include?(second_letter) == false
      # first letter is a consonant
      final_word << second_letter
      if ['a', 'e', 'i', 'o', 'u'].include?(third_letter) == false
      final_word << third_letter
      end
    end

    "#{word[final_word.length..-1] + final_word.join + "ay"}"
  end
end

end

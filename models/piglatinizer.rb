class PigLatinizer

  attr_reader :text

  def initialize
  end
  
  def piglatinize(text)
    # text = text.downcase
    if text.length == 1
      latinizer(text)
    end
    words = text.split(" ")
    words.map { |word| latinizer(word) }.join(" ")
  end

  def latinizer(word)
    if word.start_with?(/[aeouiAEOUI]/)
      return "#{word}way"
    else
      vowel = word.index(/[aeoui]/)
      output = "#{word.slice(vowel, word.length)}#{word.slice(0, vowel)}ay"
    end
  end

end 
class PigLatinizer


  def piglatinize(word)
    if word.split(" ").length == 1
      latinize(word)
    else
      arr = word.split(" ").map {|w|latinize(w)}
      arr.join(" ")
    end
  end

  def latinize(word)
    if word.start_with?('a','e','i','o','u', "A", "E", "I", "O", "U")
      return "#{word}way"
    else
      i = word.index(/[aeoui]/)
      "#{word[i..-1] + word[0..i - 1] +"ay"}"
    end
  end

end

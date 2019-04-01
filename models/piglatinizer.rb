class PigLatinizer
  attr_reader :text

  def piglatinize(input)
    if input.include?(" ")
      text = input.split #array
      result = text.map {|text| loop(text)}
      result.join(" ")
    else
      text = input #single word
      loop(text)
    end
  end

  def loop(text)
    if text.match(/^[aeiouAEIOU]/)
      text = text + "way"
    else
      until text.match(/^[aeiouAEIOU]/)
        text=text+text[0]
        text[0]=""
        text
      end
      text = text + "ay"
    end
  end

end

class PigLatinizer

  def piglatinize(phrase)
  # IF START WITH CON
  # SHIFT ALL CON BEFORE FIRST VOW
  # PUSH THEM TO END OF WORD
  # PUSH 'AY'
    piglatin = []
    ary = phrase.split(' ')
    ary.each do |word|
      if /^[^aeiou\W]/i.match(word) == nil
        ary2 = [word,"way"]
      else
        ary2 = word.split(/([aeiou].*)/)
        to_move = ary2.shift[0,ary2[0].size+1]
        ary2.push(to_move)
        ary2.push("ay")
      end
      piglatin << ary2.join
    end
    piglatin.join(' ')
  end

end

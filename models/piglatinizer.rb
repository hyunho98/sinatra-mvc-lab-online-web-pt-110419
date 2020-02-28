require 'pry'
class PigLatinizer

  def piglatinize(phrase)
    words = phrase.split(" ")
    plwords = words.collect do |word|
      letters = word.split()
      cons = []
      latinized = ""

      until letters.first() === /[aeiou]/ || letters.empty?
        cons.push(letters.shift)
      end

      if cons.length == 0
        latinized = word + "w"
      else
        latinized = letters.join() + cons.join()
      end

      latinized + "ay"
      binding.pry
    end
    plwords.join(" ")
  end

end

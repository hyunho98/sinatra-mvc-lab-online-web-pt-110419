class PigLatinizer


  def initialize(words)
    @words = words.split(" ")
  end

  def piglatinize
    plwords = @words.collect do |word|
      letters = word.split()
      cons = []
      latinized = ""

      until letters.first() != /[aeiou]/
        cons.push(letters.shift)
      end

      if cons.length == 0
        latinized = word + "w"
      else
        latinized = letters.join() + cons.join()
      end
      
      latinized + "ay"
    end


end

class PigLatinizer


  def initialize(words)
    @words = words.split(" ")
  end

  def piglatinize
    plwords = @words.collect do |word|
      letters = word.split()
      cons = []
      until letters.first() != /[aeiou]/
        cons.push(letters.shift)
      end


end

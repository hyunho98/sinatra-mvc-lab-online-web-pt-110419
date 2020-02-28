class PigLatinizer


  def initialize(words)
    @words = words.split(" ")
  end

  def piglatinize
    plwords = @words.collect do |word|
      letters = word.split()
      until letters.first() != /[aeiou]/


end

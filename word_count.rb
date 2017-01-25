class Phrase
  def initialize(string)
    @string = string
  end

  def word_count
    result = Hash.new
    words.each do |word|
      if result.empty?
        result = {word => 1}
      elsif result.key?(word)
        result[word] += 1
      else
        result.merge!(word => 1)
      end
    end
    result
  end

  def words
    @string.downcase.split(/[^\w|']+/)
  end
end
module BookKeeping
  VERSION = 1
end

# phrase = Phrase.new("one,two,three")
# counts = {"one"=>1, "two"=>1, "three"=>1}
# phrase.word_count

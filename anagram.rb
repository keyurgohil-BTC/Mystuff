module BookKeeping
  VERSION = 2
end

class Anagram
  def initialize(anagram)
    @anagram = anagram.downcase
  end
  def match(string_arr)
    string_arr.select { |el|
      (el.downcase != @anagram &&
      (@anagram.split("").sort) == (el.downcase.split("").sort))
        }.collect { |el| el }
  end
end

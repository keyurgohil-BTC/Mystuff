class Scrabble
  def initialize(input_str)
    @in_str = input_str
  end
  def get_value(x)
    score = { "A" => 1, "B" => 3, "C" => 3, "D" => 2, "E" => 1, "F" => 4, "G" => 2,
              "H" => 4, "I" => 1, "J" => 8, "K" => 5, "L" => 1, "M" => 3, "N" => 1,
              "O" => 1, "P" => 3, "Q" => 10,"R" => 1, "S" => 1, "T" => 1, "U" => 1,
              "V" => 4, "W" =>4 , "X" => 8, "Y" => 4, "Z" => 10 }
    score[x]
  end

  def score
    return 0 if is_not_acceptable?
    @in_str.split("").inject(0) { |score, chr| score += get_value(chr.upcase()) }
  end

  def is_not_acceptable?
    @in_str.nil? || @in_str.empty? || !(@in_str =~ /^[a-zA-Z]+$/)
  end
end

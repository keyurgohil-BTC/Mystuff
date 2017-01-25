class PerfectNumber

  def self.classify(number)
    raise RuntimeError if number < 0
    sum_of_factor = sum_of_factor(number)
    sum_of_factor == number ? "perfect" : sum_of_factor > number ? "abundant" : "deficient"
  end

  def self.sum_of_factor(number)
    (1...number).select { |e| ((number.modulo e) == 0) }.inject(0) {|s,e| s += e}
  end
end
module BookKeeping
  VERSION = 1
end

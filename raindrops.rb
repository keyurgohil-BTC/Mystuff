module BookKeeping
  VERSION = 3
end
class Raindrops
  def self.convert(in_number)
    out_strings = ""
    factor_arr = []
    factor_arr = factor(in_number)
    conditions = { 3 => "Pling", 5 => "Plang", 7 => "Plong"}
    conditions.keys.each do |key|
      (0...(factor_arr.length)).each do |f|
        if key == factor_arr[f]
          out_strings += conditions[key]
        end
      end
    end
    out_strings == "" ? in_number.to_s : out_strings
  end

  private
  def self.factor(in_number)
    j = 0
    factor_arr = []
    (1..in_number).each do |i|
      if ((in_number % i) == 0)
        factor_arr[j] = i
        j += 1
      end
    end
    factor_arr
  end
end

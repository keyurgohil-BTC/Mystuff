module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
class Hamming
  def self.test_DNA_length?(dna1, dna2)
    dna1.to_s.length == dna2.to_s.length
  end
  def self.compute(dna1,dna2)
    distance = 0;
    if test_DNA_length?(dna1, dna2)
      dna1_arr = dna1.split("")
      dna2_arr = dna2.split("")
      (0..(dna1_arr.length)).each do |i|
        distance += 1 if dna1_arr[i] != dna2_arr[i]
      end
      return distance
    else
      raise ArgumentError
    end
  end
end

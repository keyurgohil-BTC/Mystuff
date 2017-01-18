class Nucleotide
  def self.from_dna(dna_stream)
    raise ArgumentError unless is_s(dna_stream)
    Nucleotide.new(dna_stream)
  end
  def initialize(dna_stream)
    @dna_stream = dna_stream.upcase
  end

  def count(nucleotide)
    @dna_stream.count(nucleotide)
  end
  def histogram
    %w[A C G T].each_with_object({}) { |key,asides| asides[key] = count(key) }
  end

  def self.is_s(string_val)
    string_val.upcase =~ /^[ACGT]+$/
  end
end

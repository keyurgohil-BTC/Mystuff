class Nucleotide
  def self.from_dna(dna_stream)
    raise ArgumentError unless is_s(dna_stream)
    Nucleotide.new(dna_stream)
  end

  def initialize(dna_stream)
    @dna_stream = dna_stream.upcase
  end

  def count(nucleotide)
    return 0 if @dna_stream.nil?
    @dna_stream.split("").inject(0) { |c, chr| c += (( chr == nucleotide )? 1 : 0)}
  end

  def histogram
    asides = { "A" => 0, "C" => 0, "G" => 0,"T" => 0}
    return asides if @dna_stream.nil?
    asides.keys.map { |key| asides[key] = count(key) }
    asides
  end

  def self.is_s(string_val)
    string_val.upcase =~ /^[ACGT]+$/
  end
end

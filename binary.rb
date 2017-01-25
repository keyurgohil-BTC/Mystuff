class Binary
  def self.to_decimal(binary_stream)
    raise ArgumentError if binary_stream =~ /[^(0|1)+$]/
    c = -1
    binary_stream.reverse.split("").inject(0) {
       |decimal, b| decimal += (((2 ** (c += 1)) * b.to_i)) }
  end
end
module BookKeeping
  VERSION = 3
end

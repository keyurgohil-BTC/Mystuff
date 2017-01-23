class Trinary
  def initialize(itrinary_stream)
    @trinary_stream = itrinary_stream
  end

  def to_decimal
    decimal = 0
    decimal = if !(@trinary_stream =~ /^[012]+$/)
                0                
              else
                @trinary_stream.reverse!
                @trinary_stream = @trinary_stream.split('')
                (0...@trinary_stream.length).each do |current|
                  decimal += (@trinary_stream[current].to_i * (3 ** current))
                end
                decimal
              end
  end
end

module BookKeeping
  VERSION = 1
end
# puts Trinary.new('Invalid\n201\nString').to_decimal

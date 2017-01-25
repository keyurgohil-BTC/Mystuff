class SecretHandshake

  attr_reader :commands

  def initialize(decimal)
    @decimal = decimal
    @commands = secret
  end

  def secret
    return [] if @decimal.is_a? String

    handshake = { 0 => "wink", 1 => "double blink", 2 => "close your eyes", 3 => "jump" }.freeze

    b = @decimal.to_s(2).split("").map {|e| e.to_i}.reverse

    range = ((@decimal < 16) ? [0,1,2,3] : [3,2,1,0])
    range.select { |el| b[el] == 1 }.collect { |e| handshake[e] }
  end
end

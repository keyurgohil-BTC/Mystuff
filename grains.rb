class Grains
  def self.square(square_number)
    if !((1..64).include?(square_number))
      raise ArgumentError
    else
      cheesboard()[square_number]
    end
  end

  private
  def self.cheesboard
    cheesboard_value = { 1 => 1 , 2 => 2}
    (3..64).each do |i|
      perv_element = i-1
      cheesboard_value[i] = (cheesboard_value[perv_element] * 2)
    end
    cheesboard_value
  end

  private
  def self.total
    total=0
    cheesboard.each { |key,value| total += value }
    total
  end
end

module BookKeeping
  VERSION = 1
end

class Robot
  attr_accessor :name

  @@perv_names = []
  def initialize
    @name = set_name
    @@perv_names << name
  end

  def reset
    self.name = set_name
  end

  def set_name
    name = ('AA'..'ZZ').to_a.sample + ((rand (0..9)).to_s+(rand (0..9)).to_s+(rand (0..9)).to_s).to_s
    @@perv_names.include?(name) ? set_name : name
  end
end

module BookKeeping
  VERSION = 2
end

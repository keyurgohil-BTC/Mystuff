module BookKeeping
  VERSION = 2
end

class Acronym
  def self.abbreviate(long_name)
    long_name.gsub!(/[-]/,' ')
    long_name.gsub!(/(?<=[a-z])(?=[A-Z])/, ' ')
    long_name.split(' ').inject("") { |abb,e| abb << e[0].upcase }
  end
end

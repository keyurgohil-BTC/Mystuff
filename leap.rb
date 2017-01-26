class Year
  def self.leap?(year)
    return false if year <= 1900
    (year.modulo 4) == 0 ? true : false
  end
end
module BookKeeping
  VERSION = 2
end

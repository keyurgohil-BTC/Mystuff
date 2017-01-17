class Pangram
  def self.pangram?(phrase)
    pangram = 0
    (0..26).each do |ascii_num|
      phrase.each_byte do |char_in_byte|
        if( ((ascii_num + 65) == char_in_byte) || ((ascii_num+97) == char_in_byte))
          pangram += 1
          break
        end
      end
    end
    pangram == 26 ? ( "#{phrase} IS a pangram" ) : ( puts "#{phrase} is NOT a pangram" )
  end
end

module BookKeeping
  VERSION = 3
end

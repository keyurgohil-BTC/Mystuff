class BeerSong
  def verse(beer_bottles)
    expected = case beer_bottles
                when 0
                  "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
                when 1
                  "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
                when 2
                  "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n"
                else
                  "#{beer_bottles} bottles of beer on the wall, #{beer_bottles} bottles of beer.\nTake one down and pass it around, #{beer_bottles - 1} bottles of beer on the wall.\n"
                end
  end

  def verses(start,toend)
    expected = ""
    (start).downto(toend).each do |beer_bottles_e|
      expected += verse(beer_bottles_e)
      expected += if_more(beer_bottles_e,toend)
    end
    expected
  end

  def lyrics
    expected = ""
    (99).downto(0).each do |beer_bottles_e|
      expected += verse(beer_bottles_e)
      expected += if_more(beer_bottles_e,0)
    end
    expected
  end

  def if_more(beer_bottles_e,last)
    (beer_bottles_e != last) ? "\n" : ""
  end

end
module BookKeeping
  VERSION = 2
end

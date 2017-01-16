class BeerSong

  def get_s(beer_bottles)
    case beer_bottles
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

  def verse(beer_bottles)
    get_s(beer_bottles)
  end

  def verses(start,toend)
    start.downto(toend).map { |beer_bottles_e| verse(beer_bottles_e) }.join("\n")
  end

  def lyrics
    verses(99,0)
  end

  def if_more(beer_bottles_e,last)
    (beer_bottles_e != last) ? "\n" : ""
  end

end
module BookKeeping
  VERSION = 2
end

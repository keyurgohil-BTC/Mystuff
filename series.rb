class Series
  def initialize(serise)
    @serise = serise
  end

  def slices(value)
    raise ArgumentError if (@serise.length) < value
    series = @serise.split('')
    (0..(series.length - value)).inject([]) { |result,el|
            result.push((series.slice(el..(el + (value - 1)))).join()) }
  end
end

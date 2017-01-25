class SumOfMultiples
  def initialize(*arga)
    @arga = *arga
  end

  def to(upper_limit)
    sum_of_multiples = 0
    (@arga[0]...upper_limit).each do |e|
      @arga.each do |multi|
        if (e.modulo multi) == 0
          sum_of_multiples += e
          break
        end
      end
    end
    sum_of_multiples
  end
end

class Squares
  def initialize(nutual_num)
    @nutual_num=nutual_num
    square_of_sum
    sum_of_squares
    difference
  end

  def square_of_sum
    sum = 0
    (1..@nutual_num).each { |num| sum += num }
    sum ** 2
  end

  def sum_of_squares
    squares = 0
    (1..@nutual_num).each { |num| squares += (num ** 2) }
    squares
  end

  def difference
    difference_of = 0
    difference_of = square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3
end

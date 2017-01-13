class PrimeFactors
  def self.for(input_number)
    factor_counter = 2
    output_arr = []
    i = -1
    while input_number > 1
      if (input_number.modulo factor_counter) == 0
        output_arr[i += 1] = factor_counter
        input_number = input_number.div factor_counter
      else
        factor_counter += 1
      end
    end
    output_arr
  end
end

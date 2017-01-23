class RunLengthEncoding
  def self.encode(input)
    output = ""
    input.split("")
    occurrence = 1
    (1..input.length).each do |current_element|
      if (input[current_element]) == (input[current_element-1])
        occurrence += 1
      else
        output += ( (occurrence == 1 ? "" : occurrence.to_s) + input[current_element-1] )
        occurrence = 1
      end
    end
    output
  end
  def self.decode(input)
    input.split("")
    occurrence = ""
    output = ""
    (0...input.length).each do |chr|
      if (1..10).cover? input[chr].to_i
        occurrence += input[chr]
      else
        if occurrence == ""
          output += input[chr]
        else
          (0...occurrence.to_i).each { output += input[chr] }
          occurrence = ""
        end
      end
    end
    output
  end
end
module BookKeeping
  VERSION = 2
end

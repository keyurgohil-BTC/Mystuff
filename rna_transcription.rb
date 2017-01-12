module BookKeeping
  VERSION = 4
end
class Complement
  def self.of_dna(dna)
    dna.upcase!
    rna=''
    dna=dna.split("")
    (0..(dna.length-1)).each do |i|
      case dna[i]
      when 'G'
        rna += 'C'
      when 'C'
        rna += 'G'
      when 'T'
        rna += 'A'
      when 'A'
        rna += 'U'
      else
        rna = ''
        break
      end
    end
    rna
  end
end

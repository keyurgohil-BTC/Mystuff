#Hamming Problem
#10-jan-2017-6:40
module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

class Hamming
  def self.test_DNA_length
    if(@@d1.to_s.length == @@d2.to_s.length)
      return true
    else
      return false
    end
  end

  def self.compute(d1,d2)
    @@d1=d1
    @@d2=d2
    @c=0;
    if test_DNA_length
      @cd1=@@d1.split("")
      @cd2=@@d2.split("")
      (0..@cd1.length).each do |i|
        if @cd1[i] != @cd2[i]
          @c += 1;
        end
      end
      return @c
    else
      raise ArgumentError
    end
  end
end

# hamming=Hamming.new()
# hamming.compute('A','A')
# hamming.compute('GGACTGA','GGACTGA')
# hamming.compute('A','G')
# hamming.compute('AG','CT')
# hamming.compute('AT','CT')
# hamming.compute('GGACG','GGTCG')
# hamming.compute('ACCAGGG','ACTATGG')
# hamming.compute('AGA','AGG')
# hamming.compute('AGG','AGA')
# hamming.compute('TAG','GAT')
# hamming.compute('GATACA','GCATAA')
# hamming.compute('GGACGGATTCTG','AGGACGGATTCT')
# hamming.compute('','')
# hamming.compute('AATG','AAA')
# hamming.compute('ATA','AGTG')
# hamming.getDNA()
# # hamming.test_DNA_length
# hamming.test_DNA_hamming()

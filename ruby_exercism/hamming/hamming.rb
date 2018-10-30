module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

class Hamming

  class StrandLengthError < ArgumentError; 
  attr_reader :message

    def initialize
      @message = "ERROR: Strands has different size."
      p message
    end
  end

  def self.compute(strand1, strand2)
    strand1 = strand1.chars
    strand2 = strand2.chars
    raise StrandLengthError unless strand1.length == strand2.length
    strand1.zip(strand2).count {|n1, n2| n1 != n2}
  end
end




module BookKeeping
  VERSION = 4
end

class Complement

  DNA = 'CATG'
  RNA = 'GUAC'#amole

  def self.of_dna(nucleotides)
    nucleotides.tr(DNA, RNA)
  end

  def self.of_rna(nucleotides)
    nucleotides.tr(RNA, DNA)
  end

end


# class Complement

# NUCL_RNA = 'CGAU'
# NUCL_DNA = 'GCTA'

#   def self.of_dna(strand_dna)
#     return "" if strand_dna.chars.any? {|nucl| nucl =~ /[^#{NUCL_DNA}]/}
#     strand_dna.tr(NUCL_DNA, NUCL_RNA)
#   end
# end
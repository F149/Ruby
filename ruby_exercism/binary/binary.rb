class Binary
  def self.to_decimal(binary_code)
    raise ArgumentError unless binary_code.chars.all? {|char| ['0', '1'].include?(char)}

    decimial_num = 0
    binary_code.to_s.reverse.chars.each_with_index.map do |byte, byte_pos|
      byte === '1' ? decimial_num += 2**byte_pos : 0
    end
    decimial_num
  end
end

#class Binary
#  def self.to_decimal(binary_code)
#    raise ArgumentError unless binary_code.chars.all? {|char| ['0', '1'].include?(char)}
#    binary_code.to_i(2)
#  end
#end

code = Binary.to_decimal('10101010')


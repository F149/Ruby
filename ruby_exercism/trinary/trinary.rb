class Trinary
  attr_reader :ternary_num
  
  def initialize(ternary_num)
    @ternary_num = ternary_num
  end

  def to_decimal
    return 0 if ternary_num.match(/[\D4-9]/)
    ternary_num.split('')
               .reverse_each
               .with_index
               .inject(0) do |sum,(n,i)|
        sum + n.to_i * 3**i
    end
  end
end

    # decimial_num = 0 
    
    # return 0 if ternary_num.match(/[\D4-9]/)
    # ternary_num.to_s.reverse.chars.each_with_index.map do |num, pos|
    #   decimial_num += 2 * 3**pos if num == '2' 
    #   decimial_num += 1 * 3**pos if num == '1'
    #   decimial_num += 0 * 3**pos if num == '0' 
    # end
    # decimial_num

  # def to_decimal
  #   decimial_num = 0 
  #   return 0 if ternary_num.match(/[\D4-9]/)
  #   @ternary_num.chars.reverse.each_with_index do |digit, index|
  #     decimial_num += digit.to_i * (3**index)
  #   end
  # end
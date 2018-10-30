class SumOfMultiples
  
  def initialize(*dividers)
    @dividers = [*dividers]
  end

  def to(number)
    (0...number).select {|num| @dividers.any? {|div| num % div == 0 }}.inject(:+)
  end
end
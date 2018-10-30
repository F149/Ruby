class PrimeFactors
  def self.for(number)
    number = number.to_f  # => 645.0
    prime_list = []       # => []
    divisor = 2           # => 2
    
    while number != 1                                     # => true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, false
      prime_list << divisor if number % divisor == 0      # => nil, [3],   nil, [3, 5], nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, [3, 5, 43]
      number = number / divisor if number % divisor == 0  # => nil, 215.0, nil, 43.0,   nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 1.0
      divisor += 1 if number % divisor != 0               # => 3,   4,     5,   6,      7,   8,   9,   10,  11,  12,  13,  14,  15,  16,  17,  18,  19,  20,  21,  22,  23,  24,  25,  26,  27,  28,  29,  30,  31,  32,  33,  34,  35,  36,  37,  38,  39,  40,  41,  42,  43,  44
    end                                                   # => nil
    prime_list                                            # => [3, 5, 43]
  end                                                     # => :for
end                                                       # => :for


PrimeFactors.for(22)  # => [3, 5, 43]

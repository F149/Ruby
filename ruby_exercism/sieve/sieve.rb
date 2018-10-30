class Sieve
  attr_accessor :limit

  def initialize(limit)
    @limit = limit
  end

  def primes
    primes = Array.new(limit + 1) { false }

    (1..limit ** 0.5).each do |x|
      x_sqrt = x ** 2
      (1..limit ** 0.5).each do |y|
        y_sqrt = y ** 2
        n = 4 * x_sqrt + y_sqrt
        primes[n] = (not primes[n]) if (n <= limit and (n % 12 == 1 or n % 12 == 5))
        n = 3 * x_sqrt + y_sqrt
        primes[n] = (not primes[n]) if (n <= limit and n % 12 == 7)
        n = 3 * x_sqrt - y_sqrt
        primes[n] = (not primes[n]) if (n <= limit and x > y and n % 12 == 11)
      end
    end

    primes.each_index do |i|
      primes[i] =
        if primes[i]
          i_sq = i**2
          i_sq.step(limit, i_sq) do |prime_square_mult|
            primes[prime_square_mult] = false
          end
          i
        else
          nil
      end
    end

    primes[2] = 2
    primes[3] = 3
    primes.compact!
  end
  
end


# class Sieve
#   attr_accessor :num

#   def initialize(num)
#     @num = num
#   end

#   def primes
#     could_be_prime = (0..num).map{|i| true}
#     could_be_prime[0] = false
#     could_be_prime[1] = false
#     i = 0
#     while i*i <= num
#       if could_be_prime[i]
#         j = i*i
#         while j <= num
#           could_be_prime[j] = false
#             j += i
#         end
#       end
#       i += 1
#     end
#     return (2..num).find_all{|i| could_be_prime[i]}
#   end
# end
class Prime
  
  def self.nth(number)
    raise ArgumentError if number == 0

    primes = []
    count  = 1

    while primes.length <= number
      primes << count if prime?(count)
      count += 1
    end
    primes[number]
  end

  def self.prime?(number)
    2.upto(number - 1) do |i|
      return false if number % i == 0
    end

    true
  end
end
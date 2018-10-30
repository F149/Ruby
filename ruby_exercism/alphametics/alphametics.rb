

class Alphametics

  def self.evaluate(input)
    return false if input =~ /\b0/
    parts = input.split(' ')
    res = parts.shift.to_i
    (1..parts.length / 2).each { |_|
      op = parts.shift
      operand = parts.shift.to_i
      case op
      when "+"
        res += operand
      when "=="
        return res == operand
      end
    }
    false
  end

  def self.solve(input)
    solution = input.chars
                    .uniq
                    .select { |ch| ch =~ /[A-Z]/ }
                    .join
                    .ljust(10, "_")
                    .chars
                    .permutation
                    .lazy
                    .drop_while { |solution|
                      !evaluate(input.tr(solution.join, "0-9"))
                    }.first
    solution.nil? ? {}
      : solution.zip((0..9).to_a)
                .select { |pair| pair[0] != '_' }
                .to_h
  end
end

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end


#To long runtime

#module Alphametics
#  def self.solve(input)
#    letters = input.gsub(/\W/, '').chars.uniq
#    start = input.scan(/\b\w/).uniq
#    range = letters.map {|e| start.include?(e) ? (1..9).to_a : (0..9).to_a}
#    product = range.first.product(*range.drop(1)).select{|e| e.uniq.size == e.size}
#    digits = product.find do |translation|
#      eval(input.tr(letters.join, translation.join))
#    end
#    digits ? letters.zip(digits).to_h : {}
#  end
#end
#
#module BookKeeping
#  VERSION = 4
#end

module BookKeeping
  VERSION = 3
end

class Raindrops

  def self.convert(num)
    string = ""
    factor = { "Pling" => 3, "Plang" => 5, "Plong" => 7 }
    
    factor.each do |key, value|
      string << key  if num % value == 0
    end
    string.empty? ? num.to_s : string
  end  
end
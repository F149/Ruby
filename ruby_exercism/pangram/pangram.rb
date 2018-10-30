class Pangram
  
  def self.pangram?(phrase) 
    alphabet = ('a'..'z').to_set
    phrase.each_char do |c|
      alphabet.delete c.downcase
    end
    alphabet.empty?
  end
end
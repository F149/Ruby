class Phrase

  def initialize(input_phrase)
    @input_phrase = input_phrase
  end

  def word_count
    words = @input_phrase.downcase.gsub(/( ')|(' )|[^0-9A-Za-z']/, ' ').split(" ")
    set_of_words = Hash.new(0)
    words.each {|word| set_of_words[word] += 1 }
    set_of_words
  end
end


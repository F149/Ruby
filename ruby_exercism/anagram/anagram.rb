class Anagram
  def initialize(direct_word)
    @direct_word = direct_word.downcase
  end

  def match(word_list)
    word_list.select {|word| anagram?(word)}
  end

  def anagram?(word)
    word.downcase.chars.sort == @direct_word.chars.sort && word.downcase != @direct_word
  end
end
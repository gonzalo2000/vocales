class VowelWordsController < ApplicationController
  def a_words
    all_a_words = Word.all.select {|word| word if word.term[0] == "a" || word.term[0] == "á" || word.term[0] == "A" || word.term[0] == "Á" }
    @random_a = all_a_words.shuffle.first
  end

  def e_words
    all_e_words = Word.all.select {|word| word if word.term[0] == "e" || word.term[0] == "é" || word.term[0] == "E" || word.term[0] == "É" }
    @random_e = all_e_words.shuffle.first
  end

  def i_words
    all_i_words = Word.all.select {|word| word if word.term[0] == "i" || word.term[0] == "í" || word.term[0] == "I" || word.term[0] == "Í" }
    @random_i = all_i_words.shuffle.first
  end

  def o_words
    all_o_words = Word.all.select {|word| word if word.term[0] == "o" || word.term[0] == "ó" || word.term[0] == "O" || word.term[0] == "Ó" }
    @random_o = all_o_words.shuffle.first
  end

  def u_words
    all_u_words = Word.all.select {|word| word if word.term[0] == "u" || word.term[0] == "ú" || word.term[0] == "U" || word.term[0] == "Ú" }
    @random_u = all_u_words.shuffle.first
  end

  def random_word
    @word = Word.order("RANDOM()").first
  end
end

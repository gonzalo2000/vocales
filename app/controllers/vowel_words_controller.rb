class VowelWordsController < ApplicationController
  def a_words
    all_a_words = Word.all.select {|word| word if word.term[0] == "a"}
    @random_a = all_a_words.shuffle.first
  end

  def e_words
    all_e_words = Word.all.select {|word| word if word.term[0] == "e"}
    @random_e = all_e_words.shuffle.first
  end

  def i_words
    all_i_words = Word.all.select {|word| word if word.term[0] == "i"}
    @random_i = all_i_words.shuffle.first
  end

  def o_words
    all_o_words = Word.all.select {|word| word if word.term[0] == "o"}
    @random_o = all_o_words.shuffle.first
  end

  def u_words
    all_u_words = Word.all.select {|word| word if word.term[0] == "u"}
    @random_u = all_u_words.shuffle.first
  end
end

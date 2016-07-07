class WordsController < ApplicationController
  def index
    @word = Word.order("RANDOM()").first
  end

  def new
    @word = Word.new
  end
end

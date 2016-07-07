class WordsController < ApplicationController
  def index
    # this needs its own view for a random word
    # @word = Word.order("RANDOM()").first
    @words = Word.all
  end

  def new
    @word = Word.new
  end

  def create
    Word.create(word_params)
    redirect_to words_path
  end

  private

  def word_params
    params.require(:word).permit(:term)
  end
end

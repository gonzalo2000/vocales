class WordsController < ApplicationController
  # before_action :authenticate_user!, except: [:index]
  before_action :confirm_admin_status, except: [:index, :show]

  def index
    @words = Word.order('term')
  end

  def new
    @word = Word.new
  end

  def edit
    @word = Word.find(params[:id])
  end

  def create
    @word = Word.new(word_params)

    if @word.save 
      redirect_to words_path
    else
      render 'new'
    end
  end

  def update
    @word = Word.find(params[:id])

    if @word.update(word_params)
      redirect_to words_path
    else
      render 'edit'
    end
  end

  def destroy
    @word = Word.find(params[:id])
    @word.destroy

    redirect_to words_path
  end

  private

  def word_params
    params.require(:word).permit(:term)
  end

  def confirm_admin_status
    if !current_user.try(:admin?)
      redirect_to words_path, alert: 'You need to have Admin status to edit the words!'
    end
  end
end

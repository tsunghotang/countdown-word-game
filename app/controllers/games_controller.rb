class GamesController < ApplicationController
  def home
  end

  def new
    @letters = LettersGenerator.new(9).generate_letters
    respond_to do |format|
      format.html
      format.text { render partial: 'game.html' }
    end
  end

  def result
    @attempt = params[:attempt].upcase
    @letters = params[:letters]
    @valid_input = ValidateInput.new(input: @attempt, letters: @letters).validate
    @valid_word = WordValidator.new(@attempt).validate
    @best_answers = AnagramSolver.new(@letters.gsub(" ", "")).fetch
    respond_to do |format|
      # format.html
      format.json
    end
  end
end

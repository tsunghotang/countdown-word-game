class GamesController < ApplicationController
  def home
    WakeApi.call
  end

  def new
    @letters = LettersGenerator.call(9)
    respond_to do |format|
      # format.html
      format.text { render partial: 'game', formats: 'html' }
    end
  end

  def result
    @attempt = params[:attempt].upcase
    @letters = params[:letters]
    @valid_input = ValidateInput.call(input: @attempt, letters: @letters)
    @valid_word = WordValidator.call(@attempt)
    @best_answers = AnagramSolver.call(@letters.gsub(" ", ""))

    respond_to do |format|
      # format.html
      format.json
    end
  end
end

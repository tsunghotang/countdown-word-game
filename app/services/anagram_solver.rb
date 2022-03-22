require 'open-uri'

class AnagramSolver < ApplicationService
  def initialize(letters)
    @letters = letters
  end

  def call
    response = URI.open("https://countdown-word-game-api.herokuapp.com/solve/#{@letters}?variance=1")
    JSON.parse(response.read)
  end
end

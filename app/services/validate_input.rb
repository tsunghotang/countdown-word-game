class ValidateInput < ApplicationService
  def initialize(attributes = {})
    @input = attributes[:input]
    @letters = attributes[:letters]
  end

  def call
    puts @input
    return false if @input.empty? || @input[-1] == '.'

    @input.chars.all? { |letter| @input.count(letter) <= @letters.count(letter) }
  end
end

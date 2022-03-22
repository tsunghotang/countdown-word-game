class ValidateInput < ApplicationService
  def initialize(attributes = {})
    @input = attributes[:input]
    @letters = attributes[:letters]
  end

  def call
    return false if @input.empty?
    @input.chars.all? { |letter| @input.count(letter) <= @letters.count(letter) }
  end
end

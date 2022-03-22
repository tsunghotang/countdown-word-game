class ValidateInput
  def initialize(attributes = {})
    @input = attributes[:input]
    @letters = attributes[:letters]
  end

  def validate
    return false if @input.empty?
    @input.chars.all? { |letter| @input.count(letter) <= @letters.count(letter) }
  end
end

class LettersGenerator
  def initialize(no_of_letters)
    @no_of_letters = no_of_letters
  end

  def generate_letters
    letters_arr = ('A'..'Z').to_a
    @no_of_letters.times.map { letters_arr.sample }
    # ['S','A','M','E','M',"P","W","D","U"]
  end
end

class LettersGenerator < ApplicationService
  def initialize(number_of_letters)
    @number_of_letters = number_of_letters
  end

  def call
    vowels = %w[A E I O U].freeze
    consonants = %w[B C D F G H J K L M N P Q R S T V W X Z].freeze
    number_of_vowels = rand(3..4)
    number_of_consonants = @number_of_letters - number_of_vowels

    rand_vowels_arr = number_of_vowels.times.map { vowels.sample }
    rand_consonants_arr = number_of_consonants.times.map { consonants.sample }
    rand_vowels_arr.concat(rand_consonants_arr).shuffle
  end
end

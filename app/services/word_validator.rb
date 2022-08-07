require 'open-uri'
require 'cgi'

class WordValidator < ApplicationService
  def initialize(word)
    @word = word
  end

  def call
    begin
      encoded_word = CGI.escape(@word)
      response = URI.open("https://countdown-word-game-api.herokuapp.com/#{encoded_word}")
      json = JSON.parse(response.read)
      json['valid']
    rescue OpenURI::HTTPError => err
      false
    end
  end
end

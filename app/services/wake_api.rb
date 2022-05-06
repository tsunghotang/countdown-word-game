require 'open-uri'
class WakeApi < ApplicationService

  def call
    response = URI.open("https://countdown-word-game-api.herokuapp.com/")
    # JSON.parse(response.read)
  end

end

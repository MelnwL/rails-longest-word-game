require "open-uri"

class GamesController < ApplicationController
  def new
    @letters = []
    alphabet = ("a".."z").to_a
    10.times do
      @letters << alphabet.sample
    end
  end

  def score
    url = "https://wagon-dictionary.herokuapp.com/#{params[:word]}"
    word_serialized = URI.open(url).read
    word = JSON.parse(word_serialized)

    #  if word.split(//).each { |letter| @letters.include?(letter) }
    #  elsif word["found"] == true
    #  return "you win"
    #  else "you've lost"
    #  end
  end
end

require './lib/card'
require 'pry'

class Guess
attr_reader :response, :card
  def initialize(guess, card)
    @response = guess
    @card = card
  end

  def correct?
    if @response == @card.answer
    true
    else 
    false
    end
  end
  
  def feedback
    if correct? == true
    "Correct!"
    else
    "Incorrect."
    end
  end
    
end


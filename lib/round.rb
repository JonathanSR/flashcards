require './lib/card'
require './lib/deck'
require './lib/guess'

class Round

attr_reader :deck

  def initialize(deck)
    @deck = deck
    @guesses = []
    @number_correct = 0
  end

  def guesses
    @guesses
  end

  def current_card
    current_card = deck.cards[guesses.count]
  end

  def record_guess(response)
    @new_guess = Guess.new(response, current_card)
    guesses << @new_guess
    @new_guess
  end
  
  def number_correct
    if @new_guess.card.answer.downcase == @new_guess.response.downcase
    then @number_correct += 1
    else @number_correct += 0
    end
  end

    def percent_correct
    @number_correct.to_f / guesses.count.to_f * 100
    end
end
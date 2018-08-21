class Guess
  attr_reader :response,
              :card
  def initialize(response, card)
    @response = response
    @card_to_s = "#{card.value} of #{card.suit}"
    @card = card
  end

  def correct? 
    if @response == @card_to_s || {:value => @card.value, :suit => @card.suit} == @response
      return true
    else
      return false
    end
  end

  def feedback
    if correct? 
      return "Correct!"
    else
      return "Incorrect."
    end
  end
end
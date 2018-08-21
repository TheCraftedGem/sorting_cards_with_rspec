require "./lib/card"
require "./lib/guess"


RSpec.describe Guess do 
 
    it "has card" do
      card = Card.new("10", "Hearts")
      guess = Guess.new("10 of Hearts", card)
      expect(guess.card).to eq card
    end

    it "has response" do
      card = Card.new("10", "Hearts")
      guess = Guess.new("10 of Hearts", card)
      expect(guess.response).to eq "10 of Hearts"
  end


    it "checks response" do
      card = Card.new("10", "Hearts")
      guess = Guess.new("10 of Hearts", card)
      expect(guess.correct?).to eq true
  end


    it "gives correct feedback" do
      card = Card.new("10", "Hearts")
      guess = Guess.new("10 of Hearts", card)
      expect(guess.feedback).to eq "Correct!"
  end

  it "finds incorrect guess" do
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)
    expect(guess.correct?).to eq false
  end

  it "shows feedback for incorrect answer" do
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)
    expect(guess.feedback).to eq "Incorrect."
  end
end
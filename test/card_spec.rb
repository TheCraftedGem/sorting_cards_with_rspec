require "./lib/card"

describe Card do 

    before :each do
      @card = Card.new("Ace", "Spades")
    end

    it "has attributes" do
    expect(@card.value).to eq "Ace"
    expect(@card.suit).to eq "Spades"
    end
  end

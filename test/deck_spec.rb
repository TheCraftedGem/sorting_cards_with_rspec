require "./lib/card"
require "./lib/guess"
require "./lib/deck"

RSpec.describe Deck do
  
  it "adds and holds cards" do
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    expect(deck.cards).to eq [card_1, card_2, card_3]
    expect(deck.count).to eq 3
  end

  it "sorts deck" do
    card_1 = Card.new("4","Hearts")
    card_2 = Card.new("Jack", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    card_4 = Card.new("Ace", "Spades")
    card_5 = Card.new("Ace", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3, card_4, card_5])
    expect(deck.sort).to eq  [card_1, card_3, card_2, card_5, card_4]
  end
end
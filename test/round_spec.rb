require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/guess'


RSpec.describe Round do 
  it "tests gueses" do
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    
    expect(round.guesses).to eq []
  end

  it "tests deck exists" do
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    
    expect(deck).to be_a Deck
  end

  it "tests current card" do
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    
    expect(round.current_card).to eq card_1
  end

  it "records guesses" do
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    
    expect(round.record_guess({value: "3", suit: "Hearts"})).to be_a Guess  
  end

  it "records numbers of guesses correct" do
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})

    expect(round.number_correct).to eq 1 
    round.record_guess({value: "Jack", suit: "Diamonds"})
    expect(round.number_correct).to eq 1
  end 

  it "test percent correct" do
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "Jack", suit: "Diamonds"})
    
    expect(round.percent_correct).to eq 50
  end  
end



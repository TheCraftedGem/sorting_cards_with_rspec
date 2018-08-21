class Deck
  attr_reader :cards,
              :count 
  def initialize(cards)
    @cards = cards
  end 

  def count
    @cards.count
  end
  
  def sort
    swapped = true
    while swapped do
      swapped = false
      (count - 1).times do |card|
        if @cards[card].card_total > @cards[card + 1].card_total
          @cards[card], @cards[card + 1] = @cards[card + 1], @cards[card]
          swapped = true
        end
      end
    end
    @cards
  end
end
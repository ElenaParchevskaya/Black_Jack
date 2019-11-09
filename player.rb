class Player
  attr_accsessor :bank, :cards

  def initialize
    @cards = []
    @bank = 100
    @points = 0
  end

  def points_of_cards
    @cards.each { |card| @point += card.value }
  end

  def add_card(card)
     @cards << card
  end
end

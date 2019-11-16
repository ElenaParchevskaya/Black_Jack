module MechanicsGame

  def points_of_cards(open)
    print "Карты игрока #{self.name}: "
    @cards.each {|card| print " #{open ? card.name : '*'} "}
    puts " #{open ? self.points : '*'} очков"
  end

  def add_card(card)
    card.busy = true
    @cards << card
    @points += card.value

  end

  def change_bank(value)
    @bank += value
  end
end

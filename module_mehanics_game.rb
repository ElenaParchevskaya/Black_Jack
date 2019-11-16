module MechanicsGame

  def points_of_cards(open)
    print "Карты игрока #{self.name}: "
    @cards.each do |card|
      @point += card.value
      print " #{open ? card.name : '*'} "
    end
    puts " #{open ? self.points : '*'} очков"
  end

  def add_card(card)
    card.busy = true
    @cards << card
  end

  def change_bank(value)
    @bank += value
  end
end

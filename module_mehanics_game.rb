module MechanicsGame

  def points_of_cards(open)
    check_of_ace
    print "Карты игрока #{self.name}: "
    @cards.each {|card| print " #{open ? card.name : '*'} "}
    puts " #{open ? self.points : '*'} очков"
  end

  def add_card(card)
    card.busy = true
    @cards << card
    @points += card.value
    @ace += 1 if card.name.include?('T')
  end

  def change_bank(value)
    @bank += value
  end

  def check_of_ace
    self.ace.times do
      if self.points > 21
        self.points -= 10
        self.ace -= 1
      end
    end
  end
end

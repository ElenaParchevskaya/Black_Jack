module Processing

  def menu_for_player
    puts '1 - Пропустить ход'
    puts '2 - Взять карту'
    puts '3 - Открыть карты'
  end

  def choise_of_dealer
    count_of_cards = @dealer.cards.count
    if @dealer.points < 17 && count_of_cards < 3
       @dealer.add_card(select_card)
       puts "\n #{@dealer.name} взял карту."
       @player.points_of_cards OPEN
       @dealer.points_of_cards HIDE
     end

  end
end

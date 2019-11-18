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

  def open_cards
    @player.points_of_cards OPEN
    @dealer.points_of_cards OPEN
    player_win if @dealer.points > 21 && @player.points <= 21
    dealer_win if @player.points > 21 && @dealer.points <= 21
    game_lose if @dealer.points > 21 && @player.points > 21
    if @dealer.points <= 21 && @player.points <= 21
      player_win if @dealer.points < @player.points
      dealer_win if @dealer.points > @player.points
      game_tie if @dealer.points == @player.points
    end
  end

  def dealer_win
    puts "Победил #{@dealer.name}"
    puts "Банк #{@player.name} = #{@player.bank}"
    puts "Банк #{@dealer.name} = #{@dealer.bank += @bank}"
    @bank = 0
  end

  def player_win
      puts "Победил #{@player.name}"
       puts "Банк #{@player.name} = #{@player.bank += @bank}"
       puts "Банк #{@dealer.name} = #{@dealer.bank}"
       @bank = 0
  end

  def game_lose
      puts "Оба игрока проиграли!"
       puts "Банк #{@dealer.name} = #{@dealer.bank}"
       puts "Банк #{@dealer.name} = #{@dealer.bank}"
       @bank = 0
  end

  def game_tie
      puts "Ничья!"
       puts "Банк #{@dealer.name} = #{@dealer.bank += @bank / 2}"
       puts "Банк #{@dealer.name} = #{@dealer.bank += @bank / 2}"
       @bank = 0
  end
end
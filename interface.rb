module Interface
  module_function

  def ask_player_name
    print "\nКак тебя зовут? "
    gets.chomp
  end

  def show_info(round)
    puts "Player: #{round.player_cards}, #{round.player_score}"
    puts "Dealer: #{round.dealer_cards}, #{round.dealer_score}"
  end

  def ask_player_decision
    puts "\nТвой ход!"
    puts '0 - Пропустить ход'
    puts '1 - Взять карту'
    puts '2 - Открыть карты'
    des = gets.chomp.to_i
    return :take_card if des == 1

    :dealer_turn
  end

  def show_round_result(round)
    puts "Карты игрока: #{round.player_cards}, счет: #{round.player_score}"
    puts "Карты дилера: #{round.dealer_cards}, счет: #{round.dealer_score}"

    if round.finished?
      result = case round.result
               when :player_wins then 'Вы выиграли'
               when :draw        then 'Ничья'
               when :dealer_wins then 'Дилер выиграл'
                 else 'Ошибочка'
               end
      puts "\nРезультат!: #{result}"
    end
  end

  def show_player_balance(balance)
    puts "Ваш баланс: #{balance}"
  end

  def distribution_of_cards
    processing("\nРаздача карт")
  end

  def welcome_message
    puts "\nПриветули"
  end

  def ask_one_more?
    puts "\nСыграем еще?"
    puts '1 - Да'
    puts '2 - Нет'
    gets.chomp == '1'
  end

  def say_goodbye(balance:, name:)
    puts "\nДосвидульки, #{name}, твой баланс #{balance}"
  end

  def processing(sign)
    print sign
    20.times do
      print '.'
      sleep 0.1
    end
    puts
    puts
  end
end

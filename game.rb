require_relative 'interface'
require_relative 'round'

class Game
  BALANCE = 100
  ROUND_RATE = 10

  attr_reader :player_name, :player_balance, :current_round

  def initialize
    @player_balance = BALANCE
    @player_name = Interface.ask_player_name
  end

  def controller

    Interface.welcome_message

    while player_balance > ROUND_RATE
      bet_player_balance
      @current_round = Round.new

      until current_round.finished?
        Interface.distribution_of_cards
        Interface.show_info(current_round)
        decision = Interface.ask_player_decision
        current_round.player_turn(decision)
      end

      update_player_balance

      Interface.distribution_of_cards
      Interface.show_round_result(current_round)
      Interface.show_player_balance(player_balance)

      one_more = Interface.ask_one_more?
      break unless one_more
    end

    Interface.say_goodbye(balance: player_balance, name: player_name)
  end

  def update_player_balance
    return unless current_round.finished?

    @player_balance += 2 * ROUND_RATE if current_round.result == :player_wins
    @player_balance +=     ROUND_RATE if current_round.result == :draw
  end

  def bet_player_balance
    @player_balance -= ROUND_RATE
  end
end

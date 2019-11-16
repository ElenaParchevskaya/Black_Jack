require_relative 'card'
require_relative 'module_mehanics_game'
require_relative 'player'
require_relative 'diller'
require_relative 'module_card_options'
require_relative 'module_processing'

include CardOptions
include Processing

RATE = -10
OPEN = true
HIDE = false

@cards = []
@bank = 0

print 'Как тебя зовут? '
name = gets.chomp

@player = Player.new(name)
@dealer = Diller.new

create_deck_of_cards

@bank -= 2 * RATE
@player.change_bank(RATE)
@dealer.change_bank(RATE)

@player.add_card select_card
@player.add_card select_card
@dealer.add_card select_card
@dealer.add_card select_card

@player.points_of_cards OPEN
@dealer.points_of_cards HIDE

loop do
  menu_for_player
  case gets.chomp
  when '1'
    choise_of_dealer
  when '2'
    @player.add_card select_card
    choise_of_dealer
    break
  when '3'
    break
  end
 end

 puts 'ВиУ-ВиУ! Результаты!'

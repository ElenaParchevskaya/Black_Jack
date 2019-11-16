require_relative 'card'
require_relative 'module_mehanics_game'
require_relative 'player'
require_relative 'diller'
require_relative 'module_card_options'

include CardOptions

RATE = -10

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

@player.points_of_cards

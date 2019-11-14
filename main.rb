require_relative 'card'
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
@diller = Diller.new

create_deck_of_cards

@bank -= 2 * RATE
@player.change_bank(RATE)

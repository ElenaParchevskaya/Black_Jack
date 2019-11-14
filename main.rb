require_relative 'card'
require_relative 'player'
require_relative 'diller'

RATE = -10

@cards = []
@bank = 0

print 'Как тебя зовут? '
name = gets.chomp

@player = Player.new(name)
@diller = Diller.new

#создаем колоду карт
def create_deck_of_cards
  suit = [9824, 9827, 9829, 9830]
  4.times do |suit_number|
    suit_str = "" << suit[suit_number]
    2.upto(10) do |number|
      name = number.to_s + suit_str
      @cards << Card.new(name, number)
    end
    name = 'J' + suit_str
    @cards << Card.new(name, 10)
    name = 'Q' + suit_str
    @cards << Card.new(name, 10)
    name = 'K' + suit_str
    @cards << Card.new(name, 10)
    name = 'T' + suit_str
    @cards << Card.new(name, 10)
  end
end

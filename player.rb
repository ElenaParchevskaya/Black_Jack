require_relative 'module_mehanics_game'

class Player

  include MechanicsGame

  attr_accessor :bank, :cards

  def initialize(name)
    @name = name
    @cards = []
    @bank = 100
    @points = 0
  end
end

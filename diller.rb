require_relative 'module_mehanics_game'

class Diller

  include MechanicsGame

  attr_accsessor :bank, :cards

  def initialize
    @name = 'Diller'
    @cards = []
    @bank = 100
    @points = 0
  end
end

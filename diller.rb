# frozen_string_literal: true

class Diller
  include MechanicsGame
  attr_accessor :bank, :cards, :points, :ace
  attr_reader :name

  def initialize
    @name = 'Diller'
    @cards = []
    @bank = 100
    @points = 0
    @ace = 0
  end
end

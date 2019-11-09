class Diller
  attr_accsessor :bank, :cards

  def initialize
    @cards = []
    @bank = 100
    @points = 0
  end
end

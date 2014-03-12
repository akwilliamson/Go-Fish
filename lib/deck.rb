class Deck
  def initialize
    @deck = []
  end

  def deck
    @deck
  end

  def Deck.clear
    @deck = []
  end

  def Deck.create
    new_deck = Deck.new
    new_deck
  end

end




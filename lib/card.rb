class Card
  def initialize(suit, number)
    @suit = suit
    @number = number
  end
  def number
    @number
  end
  def suit
    @suit
  end
  def description
    "#{@suit}#{@number}"
  end
end

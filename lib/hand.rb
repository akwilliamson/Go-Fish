class Hand
  def initialize(hand)
    @hand = hand
  end

  def hand
    @hand
  end

  def draw_card(card)
    @hand << card
  end
end

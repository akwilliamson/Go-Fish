require 'rspec'
require 'player'
require 'deck'
require 'card'


describe Player do

  it 'gives a name and hand to a player' do
    new_player = Player.new("Joe",[])
    new_player.should be_an_instance_of Player
    new_player.name.should eq "Joe"
    new_player.hand.should eq []
  end
  # describe '#add_hand' do
  #   it 'adds 6 random cards to a players hand' do
  #     new_player = Player.new("Joe",[])
  #     new_player.add_hand
  #     new_player.hand.length.should eq 6
  #   end
  # end
end

describe Deck do
  before do
    Deck.clear
  end

  it 'creates a deck with no cards at first' do
    new_deck = Deck.create
    new_deck.should be_an_instance_of Deck
    new_deck.deck.length.should eq 52
  end

  it 'populates a deck with 52 cards' do
    new_deck = Deck.new
    new_deck.populate_deck
    new_deck.deck.length.should eq 52
  end


end


describe Card do
  it 'creates a card with a unique suit' do
    test_card = Card.new("D", "4")
    test_card.should be_an_instance_of Card
  end
end

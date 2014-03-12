require './lib/player'
require './lib/deck'
require './lib/hand'
require './lib/card'


def new_game
  puts "hello"
  game_deck = Deck.create
  numbers = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
  suit = ['D', 'S', 'C', 'H']
  numbers.each do |x|
    suit.each do |y|
      card = Card.new(y, x)
      game_deck.deck << card
    end
  end
  game_deck.deck.shuffle!
  @hand1 = game_deck.deck[0..5]
  game_deck.deck.slice!(0,6)
  @hand2 = game_deck.deck[0..5]
  game_deck.deck.slice!(0,6)
  main_menu
end

def main_menu
  puts "Let's play Go Fish!"

  puts "Please enter a name for player 1:"
  player1_name = gets.chomp
  puts "Please enter a name for player 2:"
  player2_name = gets.chomp
  player1_hand = Hand.new(@hand1)
  player_one = Player.new(player1_name, player1_hand)
  player2_hand = Hand.new(@hand2)
  player_two = Player.new(player2_name, player2_hand)
  puts "#{player_one.name}:"
  player_one.hand.hand.each do |card|
    puts card.description
  end
  puts "#{player_two.name}:"
  player_two.hand.hand.each do |card|
    puts card.description
  end
end

new_game



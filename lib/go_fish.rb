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
      @deck << Card.new(y, x)
    end
  end
  game_deck.shuffle
  hand1 = game_deck[0..6]
  game_deck.slice!(0,6)
  hand2 = game_deck[0..6]
  game_deck.slice!(0,6)
  puts hand1
  puts hand2
end

new_game


# def main_menu
#   puts "Let's play Go Fish!"

#   puts "Please enter a name for player 1:"
#   player1_name = gets.chomp
#   puts "Please enter a name for player 2:"
#   player2_name = gets.chomp
#   player_one = Player.new(player1_name, hand1)





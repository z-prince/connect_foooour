require './lib/board'
require 'pry'

class Player
  # attr_reader

  def initialize(game)
    @game = game
    # board = Board.new
  end

  def player_input
    puts "Pleas select a column"
    print "> "
    # binding.pry
    move = gets.chomp.intern
    @game.player_piece(move)
  end
end


game = Board.new
player = Player.new(game)
loop do

player.player_input
binding.pry
game.print_board
end

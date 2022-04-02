# frozen_string_literal: false

require './lib/board'
require 'pry'
# This class will allow manipulation of the board
class Player
  def initialize(game)
    @game = game
  end

  def player_input
    puts 'Please select a column'
    print '> '
    # binding.pry
    move = gets.chomp.intern
      # binding.pry
    invalid_move(move)
    @game.player_piece(move)
  end

  def invalid_move(move)
    # binding.pry
    if @game.space[move] < 0
      puts "Invalid move, column #{move} is full"
    elsif %i[A B C D E F G].include?(move)
      puts 'Invalid move, column must be A through G'
    else
      "Nice move!"
    end
  end  

end
game = Board.new
player = Player.new(game)
loop do

player.player_input

game.print_board
end


    # raise "Invalid move, column #{col} is full" && exit if @space[col] == -1
    %w[yes Yes sure Sure yep Yep y].include?(haiku)
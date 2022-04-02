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
    if @game.space[move] == -1
      puts "Invalid move, column #{move} is full"
    else
    @game.player_piece(move)
    end
  end


game = Board.new
player = Player.new(game)
loop do

player.player_input

game.print_board
end


    # raise "Invalid move, column #{col} is full" && exit if @space[col] == -1

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
    move = gets.chomp.upcase.intern
      # binding.pry
    invalid_move(move)
  end

  def comp_input
    random = @game.board.keys.sample
    @game.comp_piece(random)
  end

  def invalid_move(move)
    if !@game.board.keys.include?(move)
      puts 'Invalid move, column must be A through G'
    elsif @game.space[move].negative?
      puts "Invalid move, column #{move} is full"
    else
      puts "Nice move!" && @game.player_piece(move)
    end
  end

  def player_input_test
    invalid_move(:S)
  end

end
# game = Board.new
# player = Player.new(game)
# loop do

# player.player_input
# player.comp_input
# game.print_board
# end

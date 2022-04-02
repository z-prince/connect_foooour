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
    move = gets.chomp.intern
    @game.player_piece(move)
  end

  # come back and add comp messages
  def comp_input
    action = %w[A B C D E F G]
    random = action.sample.intern
    @game.comp_piece(random)
  end
end

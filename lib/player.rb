# frozen_string_literal: false

require './lib/board'
require 'pry'
# This class will allow manipulation of the board
class Player
  attr_reader :session

  def initialize
    @session = Board.new
  end

  def player_input
    puts 'Please select a column'
    print '> '
    move = gets.chomp.upcase.intern
    invalid_player_move(move)
  end

  def comp_input
    random = @session.board.keys.sample
    invalid_comp_move(random)
  end

  def invalid_player_move(move)
    if !@session.board.keys.include?(move)
      puts 'Invalid move, column must be A through G'
      player_input
    elsif @session.space[move].negative?
      puts "Invalid move, column #{move} is full"
    else
      puts "Nice move!" && @session.player_piece(move)
    end
  end

  def invalid_comp_move(move)
    if @session.space[move].negative?
      puts 'Whoa there buddy!' && comp_input # considering turn loop
    else
      @session.comp_piece(move)
    end
  end

  def player_input_test
    invalid_move(:S)
  end
end

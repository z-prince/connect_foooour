require 'pry'
require './lib/game'

class Turn
  attr_reader :game

  def initialize
    @game = Game.new
  end
  # binding.pry
  def player_turn
    @game.player.session.print_board
    @game.player.player_input
    @game.player_triumph
  end

  def comp_turn
    @game.player.comp_input
    @game.comp_triumph
  end

  def greeting
    @game.greeting
  end

  def turn_loop
    loop do
      player_turn
      comp_turn
    end
  end
end

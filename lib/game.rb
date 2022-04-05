# frozen_string_literal: false

require './lib/player'
require 'pry'
# This class will allow Connect-4 to be played
class Game
  attr_reader :player

  def initialize
        # board = Board.new
        @player = Player.new
  end

  def greeting
    p 'Welcome to CoNnEcT fOoOoUr!'
    p 'The wacky contest where vertical, horizontal, and diagonal domination are the name of the game!'
    p 'May the odds be ever in your favor!'
    p ''
    p 'Enter p to play. Enter q to quit.'
    choice = gets.chomp.downcase
    if choice == 'p'
    # is this a body
    else
      p "You're really missing out!"
    end
  end

# --------------- WIN CONDITIONS ---------------

  def draw
    return unless @player.session.space.values == [-1, -1, -1, -1, -1, -1, -1]

      puts "It's a DRAW!!!"
      exit
  end

  def check_horizontal_player
    row5 = []
    row4 = []
    row3 = []
    row2 = []
    row1 = []
    row0 = []
    @player.session.board.each_value do |win| 
      row5 << win[5]
      row4 << win[4]
      row3 << win[3]
      row2 << win[2]
      row1 << win[1]
      row0 << win[0]
      # binding.pry
      if row5[3..6] == %w[X X X X] || row5[2..5] == %w[X X X X] || row5[1..4] == %w[X X X X] || row5[0..3] == %w[X X X X]
        return true
      elsif row4[3..6] == %w[X X X X] || row4[2..5] == %w[X X X X] || row4[1..4] == %w[X X X X] || row4[0..3] == %w[X X X X]
        return true
      elsif row3[3..6] == %w[X X X X] || row3[2..5] == %w[X X X X] || row3[1..4] == %w[X X X X] || row3[0..3] == %w[X X X X]
        return true
      elsif row2[3..6] == %w[X X X X] || row2[2..5] == %w[X X X X] || row2[1..4] == %w[X X X X] || row2[0..3] == %w[X X X X]
        return true
      elsif row1[3..6] == %w[X X X X] || row1[2..5] == %w[X X X X] || row1[1..4] == %w[X X X X] || row1[0..3] == %w[X X X X]
        return true
      elsif row0[3..6] == %w[X X X X] || row0[2..5] == %w[X X X X] || row0[1..4] == %w[X X X X] || row0[0..3] == %w[X X X X]
        return true
      end
    end
  end

  def check_horizontal_comp
    row5 = []
    row4 = []
    row3 = []
    row2 = []
    row1 = []
    row0 = []
    @player.session.board.each_value do |win| 
      row5 << win[5]
      row4 << win[4]
      row3 << win[3]
      row2 << win[2]
      row1 << win[1]
      row0 << win[0]
      if row5[3..6] == %w[O O O O] || row5[2..5] == %w[O O O O] || row5[1..4] == %w[O O O O] || row5[0..3] == %w[O O O O]
        return true
      elsif row4[3..6] == %w[O O O O] || row4[2..5] == %w[O O O O] || row4[1..4] == %w[O O O O] || row4[0..3] == %w[O O O O]
        return true
      elsif row3[3..6] == %w[O O O O] || row3[2..5] == %w[O O O O] || row3[1..4] == %w[O O O O] || row3[0..3] == %w[O O O O]
        return true
      elsif row2[3..6] == %w[O O O O] || row2[2..5] == %w[O O O O] || row2[1..4] == %w[O O O O] || row2[0..3] == %w[O O O O]
        return true
      elsif row1[3..6] == %w[O O O O] || row1[2..5] == %w[O O O O] || row1[1..4] == %w[O O O O] || row1[0..3] == %w[O O O O]
        return true
      elsif row0[3..6] == %w[O O O O] || row0[2..5] == %w[O O O O] || row0[1..4] == %w[O O O O] || row0[0..3] == %w[O O O O]
        return true
      end
    end
  end

  def check_diagonal_player

  end

  def check_diagonal_comp; end

  def check_vertical_player
    @player.session.board.each_value do |win|
      if win[0..3] == %w[X X X X] || win[1..4] == %w[X X X X] || win[2..5] == %w[X X X X]
        return true
      end
    end
  end

  def check_vertical_comp
    @player.session.board.each_value do |win|
      if win[0..3] == %w[O O O O] || win[1..4] == %w[O O O O] || win[2..5] == %w[O O O O]
        return true
      end
    end
  end

  def comp_triumph
    return unless check_vertical_comp == true || check_horizontal_comp == true #|| check_diagonal_player == true

    puts 'The machines WILL RISE!!!'
    exit
  end

  def player_triumph
    return unless check_vertical_player == true || check_horizontal_player == true #|| check_diagonal_player == true

    puts 'Biological DoMiNaTiOn!!!'
    exit
  end
end

# game =  Game.new

# loop do
# # binding.pry
# game.player.player_input
# game.player.comp_input
# game.player.session.print_board
# game.draw
# game.player_triumph
# game.comp_triumph
# end


# @player.session.board.each_key do |e|

# def check_vertical
#   if  @player.session.board.each_value do |win| 
#   # binding.pry
#   win == %w[. . X X X X] || %w[. X X X X .] || %w[X X X X . .]
#     end
#   end
# end

# frozen_string_literal: false

require './lib/player'
require 'pry'
# This class will allow Connect-4 to be played
class Game
  attr_reader :player

  def initialize
    @player = Player.new
  end

  def greeting
    puts 'Welcome to CoNnEcT fOoOoUr!'
    puts 'The wacky contest where vertical, horizontal, and diagonal domination are the name of the game!'
    puts 'May the odds be ever in your favor!'
    puts ''
    puts 'Enter p to play. Enter q to quit.'
    choice = gets.chomp.downcase
    if choice == 'p'
    else
      puts "You're really missing out!"
      exit
    end
  end

  # --------------- WIN CONDITIONS ---------------

  def draw
    return unless @player.session.space.values == [-1, -1, -1, -1, -1, -1, -1]

    puts "It's a DRAW!!!"
    exit
  end

  def check_horizontal_player?
    row0, row1, row2, row3, row4, row5 = Array.new(6) { [] }

    @player.session.board.each_value do |win|
      row5 << win[5] && row4 << win[4] && row3 << win[3]
      row2 << win[2] && row1 << win[1] && row0 << win[0]
      if row5.join.include?('XXXX')
        return true
      elsif row4.join.include?('XXXX')
        return true
      elsif row3.join.include?('XXXX')
        return true
      elsif row2.join.include?('XXXX')
        return true
      elsif row1.join.include?('XXXX')
        return true
      elsif row0.join.include?('XXXX')
        return true
      end
    end
  end

  def check_horizontal_comp?
    row0, row1, row2, row3, row4, row5 = Array.new(6) { [] }

    @player.session.board.each_value do |win|
      row5 << win[5] && row4 << win[4] && row3 << win[3]
      row2 << win[2] && row1 << win[1] && row0 << win[0]
      if row5.join.include?('OOOO')
        return true
      elsif row4.join.include?('OOOO')
        return true
      elsif row3.join.include?('OOOO')
        return true
      elsif row2.join.include?('OOOO')
        return true
      elsif row1.join.include?('OOOO')
        return true
      elsif row0.join.include?('OOOO')
        return true
      end
    end
  end

  def check_diagonal_player; end

  def check_diagonal_comp; end

  def check_vertical_player?
    @player.session.board.each_value do |win|
      return true if win.join.include?('XXXX')
    end
  end

  def check_vertical_comp?
    @player.session.board.each_value do |win|
      return true if win.join.include?('OOOO')
    end
  end

  def comp_triumph
    return unless check_vertical_comp? == true || check_horizontal_comp? == true # || check_diagonal_player == true

    @player.session.print_board
    puts 'The machines WILL RISE!!!'
    exit
  end

  def player_triumph
    return unless check_vertical_player? == true || check_horizontal_player? == true # || check_diagonal_player == true

    @player.session.print_board
    puts 'Biological DoMiNaTiOn!!!'
    exit
  end
end

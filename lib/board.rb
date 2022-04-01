# frozen_string_literal: false

# class Board will create and interact with the board.
class Board
  attr_reader :board

  def initialize
    @board = {
      A: %w[. . . . . .],
      B: %w[. . . . . .],
      C: %w[. . . . . .],
      D: %w[. . . . . .],
      E: %w[. . . . . .],
      F: %w[. . . . . .],
      G: %w[. . . . . .]
    }
  end

  def print_board
    puts @board.keys.join # A, B, C, D, E, E, F, G
    6.times do |e|
      @board.each_key do |key| # Takes each key and prints it's values 6 times
        print @board[key][e]
      end
        puts '' # Creates a break in the lines to convey a proper board
    end
  end
end
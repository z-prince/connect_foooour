# frozen_string_literal: false

# class Board will create and interact with the board.
class Board
  attr_reader :board

  def initialize
    @board = {
      A: %w[. . . . . .].reverse,
      B: %w[. . . . . .].reverse,
      C: %w[. . . . . .].reverse,
      D: %w[. . . . . .].reverse,
      E: %w[. . . . . .].reverse,
      F: %w[. . . . . .].reverse,
      G: %w[. . . . . .].reverse
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

  def add_piece

  end
end

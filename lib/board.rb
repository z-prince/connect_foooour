# frozen_string_literal: false

# class Board will create and interact with the board.
class Board
  attr_accessor :board, :space

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

    @space = {
      A: 5,
      B: 5,
      C: 5,
      D: 5,
      E: 5,
      F: 5,
      G: 5
    }

    @piece1 = "X"
    @piece2 = "O"
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

  def player_piece(col)
    # raise "Invalid move, column #{col} is full" && exit if @space[col] == -1

    e = @board[col].find_index('.')
    e += @space[col]
    @space[col] -= 1
    @board[col][e] = @piece1 # @board[:A][5]
    @board
  end

  def comp_piece(col)
    e = @board[col].find_index('.')
    e += @space[col]
    @space[col] -= 1
    @board[col][e] = @piece2 # @board[:A][5]
    @board
  end
end

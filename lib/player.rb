require './lib/board'
require 'pry'

class Player
  attr_reader :piece

  def initialize
    @piece = "X"
    @board = Board.new
  end

  # def player_name
   # binding.pry
    # @name = "Jerry"
  # end

    def play_piece(col)
      # binding.pry
      placement = @board.board[col].find { |e| e == "." }
      binding.pry
      if placement == "."

        end
      # @board.board[col].pop
      # @board.board[col].append(@piece)
      # @board.board
  end
end

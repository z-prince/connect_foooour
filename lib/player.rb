require './lib/board'
require 'pry'

class Player
  attr_reader :piece

  def initialize
    @piece = "X"
    @board = Board.new
    @space = 5
  end

  # def player_name
   # binding.pry
    # @name = "Jerry"
  # end

    def play_piece(col)
      # binding.pry

      e = @board.board[col].find_index('.')
      # e += @space
      # @space -= 1
      # binding.pry
      @board.board[col][e] = @piece
      @board.print_board
      # @board.board[col].map do |spot|
      #   spot.find_index('.')
      #   spot.sub! '.', @piece
      # end
      # placement << @board.board[col].find_all { |e| e == "." }
      # binding.pry
      # if placement == "."


      # @board.board[col].pop
      # @board.board[col].append(@piece)
      # @board.board
  end
end

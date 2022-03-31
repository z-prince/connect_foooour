# require 'connect_fooour'
require 'pry'
class Player
  attr_reader :piece

  def initialize
    @piece = X
  end

  # def player_name
    binding.pry
    # @name = "Jerry"
  # end

  def play_piece(col)
    col.find
  end
end

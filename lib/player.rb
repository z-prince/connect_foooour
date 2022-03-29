# require 'connect_fooour'
require 'pry'
class Player
attr_reader :name
  def initialize(name = " ")
    @name = name
  end

  def player_name
    # binding.pry
    @name = "Jerry"
  end
end


class Board

    attr_reader :board

  def initialize
    @board = {
      :A => [".", ".", ".", ".", ".", "."],
      :B => [".", ".", ".", ".", ".", "."],
      :C => [".", ".", ".", ".", ".", "."],
      :D => [".", ".", ".", ".", ".", "."],
      :E => [".", ".", ".", ".", ".", "."],
      :F => [".", ".", ".", ".", ".", "."],
      :G => [".", ".", ".", ".", ".", "."]
    }
  end



def print_board
  puts @board.keys.join #A, B, C, D, E, E, F, G
    6.times do |e|
        @board.keys.each do |key| # Takes each key and prints it's values 6 times 
        print @board[key][e]
        end
    puts '' # Creates a break in the lines to convey a proper board
    end
  return
end

end



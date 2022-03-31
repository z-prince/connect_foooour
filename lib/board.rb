
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
        @board.keys.each do |key|
        print @board[key][e]
        end
    puts ''
    end
  return
end

end



class Board

    attr_reader :cols, :height

    def initialize(cols = 7, height = 6)
        @cols = cols
        @height = height
        @board = new_board
    end

    def new_board
        board = []
        @cols.times do 
            board << Array.new(@height)
        end
        board
    end

    def fill_column(col, piece)
        raise "Invalid move, pick a column between A and G" if col > height
        free_slots = @board




end
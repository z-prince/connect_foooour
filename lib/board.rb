class Board

    attr_reader :cols, :height

    def initialize(cols = 7, height = 6)
        @cols = cols
        @height = height
        #@board = board
    end

    def new_board
        board = []
        @cols.times do 
            board << Array.new(@height)
        end
    end


end
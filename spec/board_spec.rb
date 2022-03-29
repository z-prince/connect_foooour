require 'rspec'
require './lib/board.rb'

describe Board do
    describe '#initialize' do
        it 'is a board' do
            board1 = Board.new
            expect(board1).to be_a Board
        end
    end
end

require 'rspec'
require './lib/board'

describe 'Board' do
  it 'initializes the board that the game will be played on' do
    board = Board.new

    expect(board).to be_an_instance_of Board
  end
  
  it 'should ask a board to enter a letter A-G and take user input' do
      board = Board.new
      board.player_piece(:A)

      expect(board).to include(@board =
                                     {:A=>[".", ".", ".", ".", ".", "X"],
                                      :B=>[".", ".", ".", ".", ".", "."],
                                      :C=>[".", ".", ".", ".", ".", "."],
                                      :D=>[".", ".", ".", ".", ".", "."],
                                      :E=>[".", ".", ".", ".", ".", "."],
                                      :F=>[".", ".", ".", ".", ".", "."],
                                      :G=>[".", ".", ".", ".", ".", "."]
                                      })
end

  it 'should take multiple pieces' do
     board = Board.new
     board.player_piece(:A)

    expect(board.player_piece(:A)).to eq({
                                        :A=>[".", ".", ".", ".", "X", "X"],
                                        :B=>[".", ".", ".", ".", ".", "."],
                                        :C=>[".", ".", ".", ".", ".", "."],
                                        :D=>[".", ".", ".", ".", ".", "."],
                                        :E=>[".", ".", ".", ".", ".", "."],
                                        :F=>[".", ".", ".", ".", ".", "."],
                                        :G=>[".", ".", ".", ".", ".", "."]
                                        })
   end
end



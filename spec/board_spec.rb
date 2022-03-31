require 'rspec'
require './lib/board'

describe 'Board' do
  it 'initializes the board that the game will be played on' do
    board = Board.new

    expect(board).to be_an_instance_of Board
  end
end


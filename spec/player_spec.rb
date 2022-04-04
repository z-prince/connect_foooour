require './lib/player'
require 'rspec'

describe 'initialize' do
  it 'creates a player class with relevant objects in it' do
    board = Board.new
    player = Player.new(board)

    expect(player).to be_an_instance_of(Player)
  end
end

describe 'player_name' do
  xit 'asks for user input and updates name to the given input' do
      player = Player.new
      player.player_name

    expect(player.name).to eq "Jerry"
  end
end

describe 'player_input' do
  xit 'get player input and return error if col is not available' do
    board = Board.new
    player = Player.new


    expect(player.player_input).to eq :A
    expect(player.player_input).to eq "ERROR"
  end
end

describe 'comp_input' do 
  xit 'should take multiple pieces' do
  board = Board.new
  player = Player.new(board)
 expect(player.comp_input).to eq({
                                     :A=>[".", ".", ".", ".", ".", "O"],
                                     :B=>[".", ".", ".", ".", ".", "."],
                                     :C=>[".", ".", ".", ".", ".", "."],
                                     :D=>[".", ".", ".", ".", ".", "."],
                                     :E=>[".", ".", ".", ".", ".", "."],
                                     :F=>[".", ".", ".", ".", ".", "."],
                                     :G=>[".", ".", ".", ".", ".", "."]
                                     })
 end
end


describe 'invalid_move()' do
  it 'prevents players from choosing column outside of the specified range' do
    game = Board.new
    player = Player.new(game)

    expect(player.player_input_test).to eq("Invalid move, column must be A through G")
  end
end

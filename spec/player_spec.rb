require './lib/player'
require 'rspec'

describe 'initialize' do
  it 'creates a player class with relevant objects in it' do
    player = Player.new

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
  it 'get player input and return error if col is not available' do
    board = Board.new
    player = Player.new


    expect(player.player_input).to eq :A
    expect(player.player_input).to eq "ERROR"
  end
end


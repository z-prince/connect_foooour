# "Jerry"
require './lib/player'
require 'rspec'
# require './lib/connect_fooour'

describe 'initialize' do
  it 'creates a player class with relevant objects in it' do
    player = Player.new("Jerry")

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

describe 'play_piece' do
  it 'should ask a player to enter a letter A-G and take user input' do
    player = Player.new
    player.player_name

    expect(player.play_piece("A")).to eq "A" 
  end
end

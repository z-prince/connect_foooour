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

describe 'play_piece' do
  it 'should ask a player to enter a letter A-G and take user input' do
    player = Player.new

    expect(player.play_piece(:A)).to eq({
                                        :A=>[".", ".", ".", ".", ".", "X"],
                                        :B=>[".", ".", ".", ".", ".", "."],
                                        :C=>[".", ".", ".", ".", ".", "."],
                                        :D=>[".", ".", ".", ".", ".", "."],
                                        :E=>[".", ".", ".", ".", ".", "."],
                                        :F=>[".", ".", ".", ".", ".", "."],
                                        :G=>[".", ".", ".", ".", ".", "."]
                                        })
  end

 it 'should take multiple pieces' do
   player = Player.new
   player.play_piece(:A)

  expect(player.play_piece(:A)).to eq({
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

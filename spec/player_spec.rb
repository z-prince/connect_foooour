require './lib/player'
require 'rspec'

describe 'initialize' do
  it 'creates a player class with relevant objects in it' do
    player = Player.new

    expect(player).to be_an_instance_of(Player)
  end
end

describe 'player_input' do
  it 'get player input and return error if col is not available' do
    player = Player.new
    player.player_input_test(:A)

    expect(player.session.board).to eq ({
                                     :A=>[".", ".", ".", ".", ".", "X"],
                                     :B=>[".", ".", ".", ".", ".", "."],
                                     :C=>[".", ".", ".", ".", ".", "."],
                                     :D=>[".", ".", ".", ".", ".", "."],
                                     :E=>[".", ".", ".", ".", ".", "."],
                                     :F=>[".", ".", ".", ".", ".", "."],
                                     :G=>[".", ".", ".", ".", ".", "."]
                                     })
    expect(player.player_input_test(:S)).to raise_error
  end
end

describe 'comp_input' do 
  xit 'should generate a random symbol between A and G that can be passed to invalid_comp_move"' do
  player = Player.new

  expect(player.comp_input_test).to eq([:A , :B, :C, :D, :E, :F, :G].sample)
  end
end


describe 'invalid_move()' do
  it 'prevents players from playing in columns that are full' do
    player = Player.new
    6.times { player.session.player_piece(:A) }

    expect(player.invalid_player_move(:A)).to raise_error('Invalid move, column :A is full')
  end
end

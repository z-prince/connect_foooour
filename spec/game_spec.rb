require 'pry'
require 'rspec'
require './lib/game'
require './lib/player'
require './lib/board'

describe 'greeting' do
  it 'greets the player with a fun string' do
  game = Game.new

  expect(game).to be_an_instance_of Game
  end
end

describe 'draw' do
  it 'prints a message and exits game if there is no space on the board' do
    game = Game.new
    binding.pry
    6.times do game.player.session.player_piece(:A) end
    6.times do game.player.session.player_piece(:B) end
    6.times do game.player.session.player_piece(:C) end
    6.times do game.player.session.player_piece(:D) end
    6.times do game.player.session.player_piece(:E) end
    6.times do game.player.session.player_piece(:F) end
    5.times do game.player.session.player_piece(:G) end

    expect(game.player.session.player_piece(:G)).to eq game.draw
  end
end

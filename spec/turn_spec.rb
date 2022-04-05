require 'rspec'
require 'pry'
require './lib/turn'

describe 'Turn' do
  it 'is a Turn' do
    turn = Turn.new
    # binding.pry
    expect(turn).to be_an_instance_of Turn
  end
end

describe 'player_turn' do
  it'completes all commands needed for the player turn to be completed' do
    turn = Turn.new
    turn.player_turn

  end
end

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

describe 'greeting' do
  it 'returns a greeting to the user' do
    turn = Turn.new
    expect(turn.greeting).to eq ('Welcome to CoNnEcT fOoOoUr!
                                 The wacky contest where vertical, horizontal, and diagonal domination are the name of the game!
                                 May the odds be ever in your favor!
                                 Enter p to play. Enter q to quit.')
  end
end

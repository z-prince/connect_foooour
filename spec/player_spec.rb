"Jerry"
require './lib/player'

describe 'initialize' do
  it 'creates a player class with relevant objects in it' do
    player = Player.new("Jerry")

    expect(player).to be_an_instance_of(Player)
  end
end

describe 'player_name' do
  it 'asks for user input and updates name to the given input' do
      player = Player.new
      player.player_name
      $STDIN = "Jerry"

    expect(player.name).to eq "Jerry"

  end
end

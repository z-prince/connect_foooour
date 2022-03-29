require './lib/player'

describe 'initialize' do
  it 'creates a player class with relevant objects in it' do
    player = Player.new("Jerry")

    expect(player).to be_an_instance_of(Player)
  end
end

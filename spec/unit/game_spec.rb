require 'game'
require 'player'

describe Game do
  let(:jay) { Player.new('Jay')}
  let(:mark) { Player.new('Mark')}
  it 'allows a player to be attacked' do
    expect(jay).to receive(:receive_damage)
    mark.attack(jay)
    # double check the logic
    # only allows player instances
    # to be received
  end
end
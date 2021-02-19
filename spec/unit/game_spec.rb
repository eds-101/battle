require 'game'
require 'player'

describe Game do
  let(:jay) { Player.new('Jay')}
  it 'allows a player to be attacked' do
    expect(jay).to receive(:attacked)
    subject.attack(jay)
    # double check the logic
    # only allows player instances
    # to be received
  end
end
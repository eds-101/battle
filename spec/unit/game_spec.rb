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

  subject(:game) { described_class.new(player_1, player_2) }
   let(:player_1) { double :player }
   let(:player_2) { double :player }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq player_1
    end
  end  

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end
  end

end
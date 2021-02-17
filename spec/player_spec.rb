describe Player do
  subject(:jay) { Player.new('Jay')}
  it 'returns a players name' do
    expect(jay.name).to eq "Jay"
  end
end
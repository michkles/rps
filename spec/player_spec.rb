require 'player'

describe Player do

let(:player) { Player.new('Mike')}

  describe '#name' do
    it 'should return a name of the player' do
      expect(player.name).to eq 'Mike'
    end
  end

  describe '#weapon' do
    it 'should select weapon' do
      expect(player.weapon(:rock)).to eq :rock
    end
  end

end

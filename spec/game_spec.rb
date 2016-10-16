require 'game'

describe 'Game' do


let(:player_1) { double(name: :player, type: 'rock')}
let(:cpu) { double(name: :cpu, type: 'paper')}
subject { Game.new(player_1, cpu) }

  it 'returns the name of 1st player' do
    expect(subject.player_1).to eq player_1
  end

  it 'returns cpu name' do
    expect(subject.cpu).to eq cpu
  end

  it 'should return a winner' do
    expect(subject.battle(player_1, cpu)).to eq 'cpu wins'
  end

end

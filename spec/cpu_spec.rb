require 'cpu'

describe Cpu do

let(:cpu) { Cpu.new }

  it 'should be initialized with 1 weapon' do
    allow(cpu).to receive(:weapon).and_return("rock")
    expect(cpu.weapon).to eq 'rock'
  end

end

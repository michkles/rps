class Cpu

  attr_reader :weapon, :name
  def initialize
    @name = "cpu"
    @weapon = ['rock', 'paper', 'scissors'].sample
  end
end

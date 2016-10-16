class Game

  attr_reader :player_1, :cpu
  def initialize(player_1, cpu)
    @player_1 = player_1
    @cpu = cpu
  end

  def battle(player_1, cpu)
    if player_1.type == 'rock' && cpu.type == 'paper'
      return "cpu wins"
    end
  end

end

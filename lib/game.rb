class Game

  attr_reader :player_1, :cpu
  def initialize(player_1, cpu)
    @player_1 = player_1
    @cpu = cpu
  end

  def self.create(player_1, cpu)
    @game = Game.new(player_1, cpu)
  end  

  def self.instance
    @game
  end

  def result(player_1, cpu)
    rules(player_1.type, cpu.type)
  end

  def rules(player_weapon, cpu_weapon) #method taken from http://codereview.stackexchange.com/questions/48483/rock-paper-scissors-game
    if cpu_weapon == player_weapon
        "tied"
    elsif
       cpu_weapon == 'rock' && player_weapon == 'scissors' ||
       cpu_weapon == 'paper' && player_weapon == 'rock'    ||
       cpu_weapon == 'scissors' && player_weapon == 'scissors'
        "lost"
    else
        "won"
    end
  end

end

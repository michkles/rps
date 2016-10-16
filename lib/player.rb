class Player
  attr_reader :name, :type
  def initialize(name)
    @name = name
  end

  def weapon(type)
    @type = type
  end

end

class Player
  attr_reader :name, :name2
  DEFAULT_HIT_POINTS = 60

  def initialize(name, name2, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @name2 = name2
    @hit_points = hit_points
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hit_points -= 10
  end
end

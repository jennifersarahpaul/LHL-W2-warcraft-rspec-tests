require_relative 'unit'

class Building < Unit

  def initialize
    super(500, 0)    #health_points, attack_power
  end

  def damage_building(attack_power)
    #binding.pry
    attack_power /= 2.0
    @health_points -= attack_power.ceil
  end


end
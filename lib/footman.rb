# http://classic.battle.net/war3/human/units/footman.shtml
require_relative 'unit'

class Footman < Unit

  attr_reader :damage

  def initialize
    super(60, 10) #health_points, attack_power
  end

  def attack!(enemy)
    enemy.damage(@attack_power)
  end

  def damage(attack_power)
    @health_points -= attack_power
  end

  def attack_building(building)
    building.damage_building(@attack_power)
  end


end

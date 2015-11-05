require_relative 'unit'

class SiegeEngine < Unit

  attr_reader :gold, :food, :lumber

  def initialize
    super(400, 50)                      #health_points, attack_power
    @gold = 1000
    @food = 3
    @lumber = 500
  end

  def attack_barracks(barrack)
    if can_attack? == true
      @attack_power *= 2
      #barrack.damage(attack_power)  
      @gold -= 200
      @food -= 3
      @lumber -= 60
    else
      nil
    end
  end

  def attack_siege_engine(engine)
    if self.can_attack? == true
      #engine.damage(attack_power)  
      @gold -= 200
      @food -= 3
      @lumber -= 60
    else
      nil
    end
  end

  def can_attack?
    if @gold >= 200 && @food >= 3 && @lumber >= 60 
      true
    else
      false
    end
  end

end



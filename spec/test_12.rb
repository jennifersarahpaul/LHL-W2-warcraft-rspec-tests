# Enhancement 2
# Units start off alive but they die if their HP hits 0 or lower. This is usually a result of receiving damage from combat.

# Implementation: Define a method dead? on the Unit class. We add it to Unit instead of Footman for example b/c all units can die, not just footman or peasants.

require_relative 'spec_helper'

describe Unit do

  before :each do
    @unit = Unit.new(0,4)
    @footman = Footman.new
  end

  describe "#dead?" do
    it "says that the unit is dead" do
      expect(@unit.dead?).to be(true)
    end
  end

end


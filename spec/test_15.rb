# Enhancement 5
# Introduce a SiegeEngine Unit. The SiegeEngine does 2x the damage against the Barracks. It is however ineffective against other units (can't attack them, as though they were dead).
# Also, Siege Engines can attack other siege engines even though they cannot attack any other units (such as Peasants or Footmen)

require_relative 'spec_helper'

describe SiegeEngine do

  before :each do
    @barrack = Barracks.new
    @engine = SiegeEngine.new
  end

  describe "#can_attack?" do
    it "should be able to attack barrack" do
      expect(@engine.can_attack?).to be(true)
    end
  end

  describe "#attack_barracks" do
    it "should not attack" do
      @food = 0
      expect(@engine.attack_barracks(@barrack)).not_to be(nil)
    end
  end

  describe "#attack other siege engines" do
    it "should not attack" do
      expect(@engine.attack_siege_engine(SiegeEngine.new)).not_to be(nil)
    end
  end

end